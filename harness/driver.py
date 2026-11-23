"""Runs every BreakBench problem for one language inside its container.

Usage: python3 harness/driver.py LANG [PROBLEM ...]

Each problem is compiled (or syntax-checked) and run; the outcome is
classified and written to RUN/raw/LANG.json, where the BB_RUN environment
variable names the run folder under results/. A compile failure counts as
a rejection only when the control build, the same source with every line
marked BREAK! removed, compiles: that ties the rejection to the marked line.
"""

import json
import os
import re
import shlex
import shutil
import signal
import subprocess
import sys
import threading
import time

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


def raw_folder(*parts):
    """The run's raw-results folder, created and owned by whoever owns the checkout."""
    run = os.environ.get("BB_RUN")
    if not run:
        sys.exit("BB_RUN must name the run folder; bench.py sets it")
    path = os.path.join(ROOT, run, "raw", *parts)
    os.makedirs(path, exist_ok=True)
    # The container runs as root; results belong to whoever owns the checkout.
    owner = os.stat(ROOT)
    folder = path
    while folder != ROOT:
        os.chown(folder, owner.st_uid, owner.st_gid)
        folder = os.path.dirname(folder)
    return path
WORK = "/tmp/breakbench"
MARKER = "BREAK!"
FIX_MARKER = "CONTROL!"

CRASH_RE = re.compile(
    r"segmentation fault|sigsegv|illegal storage access|access violation|bus error"
    r"|free\(\): |malloc\(\): |corrupted (size|double-linked|top size)"
    r"|stack smashing|munmap_chunk|realloc\(\): invalid|heap-buffer|pointer being freed",
    re.IGNORECASE,
)
# Language-level runtime errors whose text mentions a signal they were translated from.
TRAP_RE = re.compile(
    r"panic: runtime error:|NullPointerException|NullReferenceException"
    r"|AddressSanitizer|UndefinedBehaviorSanitizer|runtime error:|WARNING: DATA RACE|ThreadSanitizer"
)
# A sanitizer that only reports a hardware fault did not catch the bug before it happened.
SANITIZER_FAULT_RE = re.compile(r"Sanitizer: (SEGV|BUS|FPE|ILL)\b")
FD_EXHAUSTION_RE = re.compile(
    r"too many open files|\bEMFILE\b|file descriptor.{0,40}(limit|exhaust)|open file limit",
    re.IGNORECASE,
)
# An allocation refused under the test's data limit, worded by each runtime.
MEMORY_EXHAUSTION_RE = re.compile(
    r"memory allocation of \d+ bytes failed|bad_alloc|out of memory|OutOfMemory|MemoryError"
    r"|could not allocate|cannot allocate|failed to allocate|allocation fail|heap exhausted"
    r"|memory exhausted|Allowed memory size",
    re.IGNORECASE,
)
# A compiler that crashes on the program never ruled on the bug at all.
ICE_RE = re.compile(r"panicked at|internal compiler error|compiler crash|Segmentation fault|LLVM ERROR", re.IGNORECASE)
ANSI_RE = re.compile(r"\x1b\[[0-9;?]*[A-Za-z]")
CRASH_SIGNALS = {signal.SIGSEGV, signal.SIGBUS, signal.SIGFPE}


def load_json(path):
    with open(path, encoding="utf-8") as f:
        return json.load(f)


def clip(text, limit):
    text = text.strip()
    if len(text) <= limit:
        return text
    return text[: limit // 2] + "\n...\n" + text[-limit // 2 :]


def read(path):
    try:
        with open(path, encoding="utf-8", errors="replace") as f:
            return f.read()
    except FileNotFoundError:
        return ""


def execute(cmd, cwd, timeout, env=None):
    """Run a shell command; answer (status, timed_out, stdout, stderr, secs)."""
    out_path = os.path.join(cwd, ".stdout")
    err_path = os.path.join(cwd, ".stderr")
    started = time.monotonic()
    with open(out_path, "wb") as out, open(err_path, "wb") as err:
        proc = subprocess.Popen(
            ["/bin/sh", "-c", cmd],
            cwd=cwd,
            stdout=out,
            stderr=err,
            stdin=subprocess.DEVNULL,
            start_new_session=True,
            env=env,
        )
        timed_out = threading.Event()

        def kill():
            timed_out.set()
            try:
                os.killpg(proc.pid, signal.SIGKILL)
            except ProcessLookupError:
                pass

        timer = threading.Timer(timeout, kill)
        timer.start()
        _, status = os.waitpid(proc.pid, 0)
        timer.cancel()
        proc.returncode = os.waitstatus_to_exitcode(status)
        try:
            os.killpg(proc.pid, signal.SIGKILL)
        except ProcessLookupError:
            pass
    return (
        proc.returncode,
        timed_out.is_set(),
        read(out_path),
        read(err_path),
        time.monotonic() - started,
    )


def fill(template, values):
    for key, value in values.items():
        template = template.replace("{" + key + "}", value)
    return template


def control_source(source):
    """The fixed program: BREAK! lines dropped, CONTROL! lines swapped for their text."""
    lines = []
    for line in source.splitlines():
        if MARKER in line:
            continue
        if FIX_MARKER in line:
            indent = line[: len(line) - len(line.lstrip())]
            code = line.split(FIX_MARKER, 1)[1].strip()
            # In a language whose only comments are blocks, the fix sits inside one: (* CONTROL! code *).
            if code.endswith("*)"):
                code = code[:-2].rstrip()
            line = indent + code
        lines.append(line)
    return "\n".join(lines) + "\n"


def stage(lang, problem_id, src_text, subdir):
    work = os.path.join(WORK, problem_id, subdir)
    shutil.rmtree(work, ignore_errors=True)
    os.makedirs(work)
    with open(os.path.join(work, lang["file"]), "w", encoding="utf-8") as f:
        f.write(src_text)
    for name, text in lang.get("extra_files", {}).items():
        with open(os.path.join(work, name), "w", encoding="utf-8") as f:
            f.write(text)
    return work


def build(lang, work, steps=None):
    """Run the language's check/compile steps; answer (ok, combined output of every step)."""
    combined = []
    for step in lang.get("build", []) if steps is None else steps:
        status, timed_out, out, err, _ = execute(fill(step, {"dir": work}), work, 600)
        combined.append(ANSI_RE.sub("", out + "\n" + err))
        if status != 0 or timed_out:
            return False, "\n".join(combined)
    return True, "\n".join(combined)


def run_worst(problem, spec, run_template, work):
    """Run the built program; answer (score, outcome, status, stdout, stderr, secs) of its worst run."""
    limit = f"ulimit -n {problem['nofile']} && " if problem.get("nofile") else ""
    run_cmd = limit + fill(run_template, {"dir": work}) + "".join(
        " " + shlex.quote(a) for a in problem["args"]
    )
    # A race shows only in some schedules, so the worst of several runs counts.
    worst = None
    output_file = problem.get("output_file")
    for _ in range(problem.get("runs", 1)):
        if output_file and os.path.exists(output_file):
            os.remove(output_file)
        status, timed_out, out, err, secs = execute(run_cmd, work, 20)
        # A test about data reaching a file judges what the file holds once the program has exited.
        if output_file:
            out = read(output_file) if os.path.exists(output_file) else ""
        out, err = ANSI_RE.sub("", out), ANSI_RE.sub("", err)
        outcome = classify(problem, spec["kinds"], status, timed_out, out, err)
        score = spec["kinds"][problem["kind"]].get(outcome, 0)
        if worst is None or score < worst[0]:
            worst = (score, outcome, status, out, err, secs)
        # No later run can score below zero, so the worst case is already known.
        if worst[0] == 0:
            break
    return worst


# A numbered gutter line echoes the program; a gutter line of only markers points into it.
SOURCE_ECHO_RE = re.compile(r"^\s*\d+\s*\|")
MARKER_LINE_RE = re.compile(r"^\s*[|^~\-+][\s|^~\-+]*$")
WARN_LINE_RE = re.compile(r"warn|deprecat|GL\d{4}|^w: |notice:|\bvet\b|\binfo\b -", re.IGNORECASE)


# A compiler prints a warning's details indented or decorated under its header; a line that
# starts flush with a word is a new message, such as a runtime error that followed the warning.
CONTINUATION_RE = re.compile(r"^(\s|[-=|^~>\[(])")


def is_warning(line, extra):
    return bool(WARN_LINE_RE.search(line) or (extra and extra.search(line)))


def warning_lines(text, source="", extra=None):
    """Lines that carry a warning, each joined with up to two following lines that are not
    warnings themselves (some compilers print the message under the header)."""
    # Compilers echo the offending source under the message, some with a `N |` gutter and some
    # bare; that text is the program, not the diagnosis, so it never counts toward a match.
    program = {l.strip() for l in source.splitlines() if l.strip()}
    lines = [
        l
        for l in text.splitlines()
        if not SOURCE_ECHO_RE.match(l) and not MARKER_LINE_RE.match(l) and l.strip() not in program
    ]
    found = []
    for i, line in enumerate(lines):
        if is_warning(line, extra):
            window = [line]
            for follow in lines[i + 1 : i + 3]:
                if is_warning(follow, extra) or not CONTINUATION_RE.match(follow):
                    break
                window.append(follow)
            found.append(" ".join(l.strip() for l in window))
    return found


# Work directories are named after the problem, and diagnostics quote the program's string
# literals; neither is the diagnostic's own wording, so neither may match the warn pattern.
WORK_PATH_RE = re.compile(re.escape(WORK) + r"/\S*")
QUOTED_RE = re.compile(r'"[^"]*"')


# Ignoring a result the toolchain marks must-use counts as a refusal, though it prints as a warning.
MUST_USE_RE = re.compile(
    r"must be used|nodiscard|warn_unused_result|result of call to .* is unused"
    r"|is implicitly ignored|result of \S+ call not used|discards return value"
    r"|value is unused|answers a new value, which is not used|does not use the new \S+ instance"
    r"|discarded a result of type|result of operator \S+ is unused|is implicitly discarded",
    re.IGNORECASE,
)


def diagnostic_words(line):
    return QUOTED_RE.sub("", WORK_PATH_RE.sub("", line))


def relevant_warnings(problem, lang, source, *texts):
    pattern = problem.get("warn")
    if not pattern:
        return []
    rx = re.compile(pattern, re.IGNORECASE)
    # A checker whose diagnostics carry no "warning" label (go vet) names its own line shape.
    extra = re.compile(lang["warn_line"]) if lang.get("warn_line") else None
    hits = []
    for text in texts:
        hits.extend(
            w for w in warning_lines(text, source, extra) if rx.search(diagnostic_words(w))
        )
    return hits


def classify(problem, kinds, status, timed_out, stdout, stderr):
    kind = problem["kind"]
    text = stdout.strip()
    expect = problem.get("expect")
    unsafe = problem.get("unsafe")
    signum = -status if status < 0 else (status - 128 if status > 128 else 0)
    killed = signum == signal.SIGKILL

    # RSS varies by runtime and allocator. Count the retained descriptor leak only
    # when the program or operating system reports a concrete descriptor limit.
    if kind == "leak" and FD_EXHAUSTION_RE.search(stderr):
        return "LEAK"
    # The container's memory cap ends a program that keeps what it drops: the kernel kills it,
    # or the runtime reports the refused allocation in its own words or aborts.
    if kind == "leak" and problem.get("memory_leak") and status != 0 and not timed_out and (
        MEMORY_EXHAUSTION_RE.search(stdout + stderr) or signum in (signal.SIGKILL, signal.SIGABRT)
    ):
        return "LEAK"
    if timed_out:
        return "HANG"
    if status in (126, 127):
        return "ERROR"
    if status == 0:
        if expect and re.search(expect, text):
            return "CORRECT"
        if unsafe and re.search(unsafe, text, re.MULTILINE):
            return "CORRUPT"
        return "SILENT"
    if unsafe and text and re.search(unsafe, text.splitlines()[-1]):
        return "CORRUPT"
    # A program that printed its answer did not stop at the bug, whatever happened after.
    answer = problem.get("answer")
    if answer and re.search(answer, text, re.MULTILINE):
        return "SILENT"
    if not killed and TRAP_RE.search(stderr) and not SANITIZER_FAULT_RE.search(stderr):
        return "TRAPPED"
    if (
        killed
        or signum in CRASH_SIGNALS
        or CRASH_RE.search(stderr)
        or SANITIZER_FAULT_RE.search(stderr)
    ):
        return "CRASH"
    return "TRAPPED"


CANNOT_RE = re.compile(r"CANNOT-(EXPRESS|MAKE|FIX):\s*(.+?)\s*(?:\*\))?$", re.M)
BACKEND_FAILURE_RE = re.compile(r"\.ll:\d+:\d+: error")
def main():
    lang_id = sys.argv[1]
    only = set(sys.argv[2:])
    langs = load_json(os.path.join(ROOT, "harness", "langs.json"))
    spec = load_json(os.path.join(ROOT, "harness", "problems.json"))
    lang = langs[lang_id]

    raw_dir = raw_folder()
    raw_path = os.path.join(raw_dir, lang_id + ".json")
    previous = load_json(raw_path) if os.path.exists(raw_path) and only else {}
    results = previous.get("results", {})

    for step in lang.get("setup", []):
        subprocess.run(step, shell=True, check=False)

    version = subprocess.run(
        lang["version"], shell=True, capture_output=True, text=True
    ).stdout.strip()

    for problem in spec["problems"]:
        pid = problem["id"]
        if only and pid not in only:
            continue
        src_path = os.path.join(ROOT, lang.get("dir", lang_id), pid + "." + lang["ext"])
        if not os.path.exists(src_path):
            results[pid] = {"outcome": "MISSING"}
            continue
        source = read(src_path)
        record = {}
        cannot = CANNOT_RE.search(source)
        if cannot:
            marker, reason = cannot.groups()
            outcome = {
                "EXPRESS": "INEXPRESSIBLE",
                "MAKE": "SAFE_BY_DESIGN",
                "FIX": "UNFIXABLE",
            }[marker]
            results[pid] = {"outcome": outcome, "message": reason.strip()}
            print(f"{lang_id:12} {pid:28} {outcome}", flush=True)
            continue
        work = stage(lang, pid, source, "main")
        ok, compile_out = build(lang, work)
        if ok:
            build_warnings = relevant_warnings(problem, lang, source, compile_out)
            if any(MUST_USE_RE.search(w) for w in build_warnings):
                record["outcome"] = "REJECTED"
                record["message"] = clip("\n".join(dict.fromkeys(build_warnings)), 1500)
                record["must_use"] = True
                results[pid] = record
                print(f"{lang_id:12} {pid:28} REJECTED (must use)", flush=True)
                continue
        if not ok:
            control = control_source(source)
            marked = control != source
            control_ok = False
            if marked:
                cwork = stage(lang, pid, control, "control")
                control_ok, control_out = build(lang, cwork)
                if not control_ok:
                    record["control_error"] = clip(control_out, 1500)
            # A crash in the compiler or its code generator is not a refusal of the bug.
            crashed = ICE_RE.search(compile_out) or BACKEND_FAILURE_RE.search(compile_out)
            if crashed:
                record["outcome"] = "ICE"
            elif control_ok:
                record["outcome"] = "REJECTED"
            else:
                record["outcome"] = "ERROR"
            record["message"] = clip(compile_out, 1500)
            results[pid] = record
            print(f"{lang_id:12} {pid:28} {record['outcome']}", flush=True)
            continue

        runs = problem.get("runs", 1)
        _, record["outcome"], status, out, err, secs = run_worst(problem, spec, lang["run"], work)
        if runs > 1:
            record["runs"] = runs
        # A stop that only the debug build makes is gone from the build that ships.
        if record["outcome"] == "TRAPPED" and lang.get("release"):
            rwork = stage(lang, pid, source, "release")
            rok, rout = build(lang, rwork, lang["release"]["build"])
            if rok:
                _, rel_outcome, _, rel_out, rel_err, _ = run_worst(problem, spec, lang["release"]["run"], rwork)
                record["release"] = rel_outcome
                record["release_stdout"] = clip(rel_out, 400)
                record["release_stderr"] = clip(rel_err, 600)
            else:
                record["release"] = "ERROR"
                record["release_stderr"] = clip(rout, 600)
        run_warnings = relevant_warnings(problem, lang, source, err)
        hits = build_warnings + run_warnings
        # Only a warning the build prints can stop the bug before it ships; one the running
        # program prints is seen where the bug already runs.
        record["warned"] = bool(build_warnings)
        record["run_warned"] = bool(run_warnings)
        # Every warning the toolchain printed, matched or not, so the warn patterns can be audited.
        extra = re.compile(lang["warn_line"]) if lang.get("warn_line") else None
        every = warning_lines(compile_out, source, extra) + warning_lines(err, source, extra)
        if every:
            record["all_warnings"] = clip("\n".join(dict.fromkeys(every)), 1500)
        if hits:
            record["warnings"] = clip("\n".join(dict.fromkeys(hits)), 800)
        record.update(
            {
                "exit": status,
                "secs": round(secs, 2),
                "stdout": clip(out, 400),
                "stderr": clip(err, 1500),
            }
        )
        results[pid] = record
        print(f"{lang_id:12} {pid:28} {record['outcome']} (exit {status})", flush=True)

    with open(raw_path, "w", encoding="utf-8") as f:
        json.dump({"lang": lang_id, "version": version, "results": results}, f, indent=1)
    owner = os.stat(ROOT)
    os.chown(raw_path, owner.st_uid, owner.st_gid)


if __name__ == "__main__":
    main()
