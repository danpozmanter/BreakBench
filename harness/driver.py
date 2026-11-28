"""Runs every BreakBench problem for one language inside its container.

Usage: python3 harness/driver.py LANG [PROBLEM ...]

Each problem is compiled (or syntax-checked) and run; the outcome is
classified and written to RUN/raw/LANG.json, where the BB_RUN environment
variable names the run folder under results/.

The control is the fixed program: every BREAK! line dropped and every CONTROL! line swapped in.
A compile failure is a refusal only when the control compiles and the compiler's error points at
the bug: a marked line, a line near one, or a line opening a construct that holds one. A run that
does not give the right answer also requires the control to give it, so a stop or a wrong answer
comes from the bug and not from a broken program.

A program that falls short also gets the language's own tooling (langs.json "tools"): a linter or
compiler warning counts when it points at the bug and the fixed program does not get it, and a
sanitizer report counts when the fixed program runs clean. A `<test>.safer.<ext>` program does the
same job with the standard library's other call for it and is judged like the first.
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
TRAP_RE = re.compile(r"panic: runtime error:|NullPointerException|NullReferenceException|runtime error:")
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


def run_once(problem, run_template, work):
    """Run the built program once; answer (outcome, status, stdout, stderr, secs)."""
    limit = f"ulimit -n {problem['nofile']} && " if problem.get("nofile") else ""
    run_cmd = limit + fill(run_template, {"dir": work}) + "".join(
        " " + shlex.quote(a) for a in problem["args"]
    )
    output_file = problem.get("output_file")
    if output_file and os.path.exists(output_file):
        os.remove(output_file)
    scratch_dir = problem.get("scratch_dir")
    if scratch_dir:
        shutil.rmtree(scratch_dir, ignore_errors=True)
        os.makedirs(scratch_dir)
    # A run gets 20 s; a test that writes gigabytes names a longer limit so a correct program
    # in the slowest debug build still finishes.
    status, timed_out, out, err, secs = execute(run_cmd, work, problem.get("timeout", 20))
    # A test about data reaching a file judges what the file holds once the program has exited.
    if output_file:
        out = read(output_file) if os.path.exists(output_file) else ""
    # A test about cleanup judges what the program left in its scratch folder once it has exited.
    if scratch_dir:
        left = sorted(os.listdir(scratch_dir)) if os.path.isdir(scratch_dir) else []
        out = "left behind: " + ", ".join(left) if left else "cleaned"
    out, err = ANSI_RE.sub("", out), ANSI_RE.sub("", err)
    return classify(problem, status, timed_out, out, err), status, out, err, secs


def classify(problem, status, timed_out, stdout, stderr):
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
    # A test about the exit status asks only whether a failed run ended with a failure status.
    if problem.get("expect_status") == "failure":
        return "CORRECT" if status != 0 else "SILENT"
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
    if not killed and TRAP_RE.search(stderr):
        return "TRAPPED"
    if killed or signum in CRASH_SIGNALS or CRASH_RE.search(stderr):
        return "CRASH"
    return "TRAPPED"


# Where a compiler names a line of the program: `main.rs:12:5`, `main.ts(12,5)`, `main.d-mixin-7(7)`,
# OCaml/Python `File "main.ml", line 12` (or `lines 4-6`), PHP `in main.php on line 12`, Julia `@ none:12`.
LOCATION_PATTERNS = (
    r"(?<![\w.]){f}\"?:(\d+)",
    r"(?<![\w.]){f}(?:-mixin-\d+)?\((\d+)",
    r"File \"[^\"]*{f}\", lines? (\d+)(?:-(\d+))?",
    r"{f} on line (\d+)",
    r"(?<![\w.]){f}, line (\d+)",
    r"@ none:(\d+)",
)
WARNING_LINE_RE = re.compile(r"\bwarning\b", re.I)
ERROR_WORD_RE = re.compile(r"\berror\b", re.I)
# How far from a marked line a compiler's error may point and still name the bug.
TIE_WINDOW = 3
OPENS_BLOCK_RE = re.compile(r"(\{|:|\bdo|\bthen|\bwith|\bof|=)\s*(//.*|#.*|--.*|\(\*.*)?$")


def error_lines(output, file_name):
    """Program lines the compiler's errors point at; warning-only lines are skipped."""
    escaped = re.escape(file_name)
    patterns = [re.compile(p.replace("{f}", escaped)) for p in LOCATION_PATTERNS]
    found = set()
    for line in output.splitlines():
        if WARNING_LINE_RE.search(line) and not ERROR_WORD_RE.search(line):
            continue
        for pattern in patterns:
            for match in pattern.finditer(line):
                bounds = [int(g) for g in match.groups() if g]
                found.update(range(bounds[0], bounds[-1] + 1))
    return found


def bug_region(source):
    """Lines a refusal of the bug may point at: each marked line and its neighbours, plus the lines
    that open the constructs holding it, since an omission is reported where its construct begins."""
    lines = source.splitlines()

    def indent(text):
        return len(text.expandtabs(4)) - len(text.expandtabs(4).lstrip())

    region = set()
    for number, text in enumerate(lines, 1):
        if MARKER not in text and FIX_MARKER not in text:
            continue
        region.update(range(number - TIE_WINDOW, number + TIE_WINDOW + 1))
        level = indent(text)
        for above in range(number - 1, 0, -1):
            line = lines[above - 1]
            if not line.strip():
                continue
            if indent(line) < level:
                region.add(above)
                if line.strip() in ("{", "(") and above > 1:
                    region.add(above - 1)
                level = indent(line)
                if level == 0:
                    break
            elif indent(line) == level and OPENS_BLOCK_RE.search(line):
                region.add(above)
    return region


# A declaration of a type or interface; a method marked as the bug may be reported where its type
# claims the interface, so that declaration belongs to the bug's lines.
DECLARATION_RE = re.compile(r"\b(?:struct|class|interface|trait|type|record|object|enum|impl|protocol)\s+(\w+)")
IDENTIFIER_RE = re.compile(r"[A-Za-z_]\w*")


def declarations_of_marked_types(source):
    lines = source.splitlines()
    named = set()
    for text in lines:
        if MARKER in text or FIX_MARKER in text:
            named.update(IDENTIFIER_RE.findall(text))
    return {number for number, text in enumerate(lines, 1)
            if (match := DECLARATION_RE.search(text)) and match.group(1) in named}


def tied_to_bug(output, file_name, source):
    return bool(error_lines(output, file_name) & (bug_region(source) | declarations_of_marked_types(source)))


def check_control(lang, problem, pid, control):
    """Answer (verified, detail): whether the fixed program builds and gives the expected answer."""
    cwork = stage(lang, pid, control, "control")
    ok, out = build(lang, cwork)
    if not ok:
        return False, "The fixed program did not build:\n" + clip(out, 1200)
    # The program without the bug prints the test's answer, or its own answer where the buggy run has
    # none to give (a missing value, a failed parse).
    expect = problem.get("control_expect") or problem.get("expect")
    outcome, status, cout, cerr, _ = run_once({**problem, "expect": expect}, lang["run"], cwork)
    if outcome == "CORRECT":
        return True, ""
    return False, (f"The fixed program ran {outcome} (exit {status}), printed "
                   f"{clip(cout, 200)!r}:\n{clip(cerr, 800)}")


def shipped(lang):
    """The language as it ships: its release build and run where it has one, with no second run."""
    release = lang.get("release")
    if not release:
        return lang
    rest = {k: v for k, v in lang.items() if k != "release"}
    return {**rest, "build": release["build"], "run": release["run"]}


CANNOT_RE = re.compile(r"CANNOT-(EXPRESS|MAKE|FIX):\s*(.+?)\s*(?:\*\))?$", re.M)
# The language leaves the marked behavior undefined or unspecified, so a right answer is chance.
UNDEFINED_RE = re.compile(r"UNDEFINED:\s*(.+?)\s*(?:\*\))?$", re.M)
BACKEND_FAILURE_RE = re.compile(r"\.ll:\d+:\d+: error")
# A report from a sanitizer: AddressSanitizer, LeakSanitizer, UndefinedBehaviorSanitizer (`main.c:5:7:
# runtime error:`), ThreadSanitizer, or Go's race detector. AddressSanitizer's report of a signal
# (SEGV, ILL, a stack overflow, ...) only restates a crash or trap the program makes without it, so it does not count.
SANITIZER_RE = re.compile(
    r"ERROR: AddressSanitizer: (?!(SEGV|ILL|BUS|FPE|ABRT|stack-overflow)\b)|ERROR: LeakSanitizer"
    r"|^\S+:\d+:\d+: runtime error:|WARNING: ThreadSanitizer|WARNING: DATA RACE",
    re.M,
)
# A line of quoted source or a caret under it, which repeats the program rather than the diagnostic.
SNIPPET_RE = re.compile(r"^\s*\d*\s*[|│]|^\s*[\^~\s]+$")
GENERIC_WORDS = {"file", "line", "lines", "characters", "warning", "error", "note", "info", "hint", "main"}


def location_patterns(file_name):
    escaped = re.escape(file_name)
    return [re.compile(p.replace("{f}", escaped)) for p in LOCATION_PATTERNS]


def normalize(text, patterns):
    """A diagnostic's text with its location, work folder, line numbers and the bug markers removed."""
    text = re.sub(r"\S*" + re.escape(WORK) + r"\S*", "", text)
    for pattern in patterns:
        text = pattern.sub("", text)
    text = re.sub(r"(BREAK!|CONTROL!).*", "", text)
    return re.sub(r"\s+", " ", re.sub(r"\d+", "", text)).strip().lower()


def diagnostics(output, file_name):
    """(lines, message) for each line of a tool's output that names a line of the program."""
    patterns = location_patterns(file_name)
    lines = output.splitlines()
    found = []
    for i, line in enumerate(lines):
        numbers = set()
        for pattern in patterns:
            for match in pattern.finditer(line):
                bounds = [int(g) for g in match.groups() if g]
                numbers.update(range(bounds[0], bounds[-1] + 1))
        if not numbers:
            continue
        shown = [line]
        # A location on a line of its own (rustc's `-->`, OCaml's `File ..., line`) carries its
        # message on the line before or after it.
        if len(set(re.findall(r"[a-z]{3,}", normalize(line, patterns))) - GENERIC_WORDS) < 2:
            shown = [lines[j] for j in (i - 1, i, i + 1)
                     if 0 <= j < len(lines) and (j == i or not SNIPPET_RE.search(lines[j]))]
        found.append((numbers, normalize(" ".join(shown), patterns), " ".join(x.strip() for x in shown)))
    return found


def tool_findings(main_outputs, control_outputs, file_name, source):
    """Diagnostics that point at the bug and that the program without the bug does not get."""
    region = bug_region(source) | declarations_of_marked_types(source)
    in_control = {message for out in control_outputs for _, message, _ in diagnostics(out, file_name)}
    return [text for out in main_outputs for numbers, message, text in diagnostics(out, file_name)
            if numbers & region and message not in in_control]


def run_tools(lang, work, commands):
    outputs = []
    for command in commands:
        _, _, out, err, _ = execute(fill(command, {"dir": work}), work, 600)
        outputs.append(ANSI_RE.sub("", out + "\n" + err))
    return outputs


def with_tools(lang, problem, pid, tag, source, compile_out, work, outcome):
    """What the language's own tooling adds: a linter or compiler warning tied to the bug, or a
    sanitizer report the program without the bug does not get."""
    tools = lang.get("tools", {})
    control = control_source(source)
    commands = tools.get("check", [])
    if control != source:
        main_outputs = [compile_out, *run_tools(lang, work, commands)]
        cwork = stage(lang, pid + tag, control, "tools-control")
        _, control_out = build(lang, cwork)
        control_outputs = [control_out, *run_tools(lang, cwork, commands)]
        found = tool_findings(main_outputs, control_outputs, lang["file"], source)
        if found:
            return {"tool": "FLAGGED", "tool_output": clip("\n".join(dict.fromkeys(found)), 1200)}
    # A sanitizer report scores below a stop the program already makes, so it is sought only where
    # the run did harm unseen.
    sanitize = tools.get("sanitize")
    if sanitize and control != source and outcome != "TRAPPED":
        swork = stage(lang, pid + tag, source, "sanitize")
        ok, out = build(lang, swork, sanitize["build"])
        if ok:
            _, _, sout, serr, _ = run_once(problem, sanitize["run"], swork)
            if SANITIZER_RE.search(serr):
                cwork = stage(lang, pid + tag, control, "sanitize-control")
                cok, _ = build(lang, cwork, sanitize["build"])
                _, _, _, cerr, _ = run_once(problem, sanitize["run"], cwork) if cok else (0, 0, "", "", 0)
                if cok and not SANITIZER_RE.search(cerr):
                    return {"tool": "SANITIZED", "tool_output": clip(serr, 1200)}
    return {}


def judge(lang, problem, pid, source, tag=""):
    """Build, run and classify one program; tag keeps a second program's folders apart."""
    record = {}
    cannot = CANNOT_RE.search(source)
    if cannot:
        marker, reason = cannot.groups()
        outcome = {"EXPRESS": "INEXPRESSIBLE", "MAKE": "SAFE_BY_DESIGN", "FIX": "UNFIXABLE"}[marker]
        return {"outcome": outcome, "message": reason.strip()}
    # A test about a check only debug builds keep judges the build that ships.
    built = shipped(lang) if problem.get("build") == "release" else lang
    work = stage(built, pid + tag, source, "main")
    ok, compile_out = build(built, work)
    control = control_source(source)
    marked = control != source
    # A build step that loads the program (Clojure compiles by evaluating each form) can stop
    # on a run-time error; that is the program running, so it is judged as a run.
    runs_code = built.get("build_trap") and re.search(built["build_trap"], compile_out, re.M)
    if not ok and not runs_code:
        control_ok = False
        if marked:
            cwork = stage(built, pid + tag, control, "control")
            control_ok, control_out = build(built, cwork)
            if not control_ok:
                record["control_error"] = clip(control_out, 1500)
        # A crash in the compiler or its code generator is not a refusal of the bug.
        crashed = ICE_RE.search(compile_out) or BACKEND_FAILURE_RE.search(compile_out)
        if crashed:
            record["outcome"] = "ICE"
        elif not control_ok:
            record["outcome"] = "ERROR"
        elif tied_to_bug(compile_out, built["file"], source):
            record["outcome"] = "REJECTED"
        else:
            record["outcome"] = "UNTIED"
        record["message"] = clip(compile_out, 1500)
        if record["outcome"] in ("REJECTED", "UNTIED"):
            record["control"] = "builds"
        return record
    if ok and compile_out.strip():
        record["build_output"] = clip(compile_out.strip(), 1500)

    record["outcome"], status, out, err, secs = run_once(problem, built["run"], work)
    if record["outcome"] not in ("CORRECT", "CHANCE"):
        if marked:
            verified, detail = check_control(built, problem, pid + tag, control)
            record["control"] = "verified" if verified else "failed"
            if not verified:
                record["unverified_outcome"] = record["outcome"]
                record["outcome"], record["control_error"] = "ERROR", detail
        else:
            record["control"] = "none"
    undefined = UNDEFINED_RE.search(source)
    if undefined and record["outcome"] == "CORRECT":
        record["outcome"] = "CHANCE"
        record["message"] = undefined.group(1).strip()
    # A stop that only the debug build makes is gone from the build that ships.
    if record["outcome"] == "TRAPPED" and built.get("release"):
        rwork = stage(built, pid + tag, source, "release")
        rok, rout = build(built, rwork, built["release"]["build"])
        if rok:
            rel_outcome, _, rel_out, rel_err, _ = run_once(problem, built["release"]["run"], rwork)
            record["release"] = rel_outcome
            record["release_stdout"] = clip(rel_out, 400)
            record["release_stderr"] = clip(rel_err, 600)
        else:
            record["release"] = "ERROR"
            record["release_stderr"] = clip(rout, 600)
    record.update({"exit": status, "secs": round(secs, 2), "stdout": clip(out, 400), "stderr": clip(err, 1500)})
    if not tag and record["outcome"] not in ("CORRECT", "ERROR", "UNFIXABLE"):
        record.update(with_tools(built, problem, pid, tag, source, compile_out, work, record["outcome"]))
    return record


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
        folder = os.path.join(ROOT, lang.get("dir", lang_id))
        src_path = os.path.join(folder, pid + "." + lang["ext"])
        if not os.path.exists(src_path):
            results[pid] = {"outcome": "MISSING"}
            continue
        record = judge(lang, problem, pid, read(src_path))
        # The same job done with the standard library's other call for it, judged the same way.
        safer_path = os.path.join(folder, pid + ".safer." + lang["ext"])
        if os.path.exists(safer_path) and record["outcome"] not in ("REJECTED", "CORRECT", "SAFE_BY_DESIGN"):
            safer = judge(lang, problem, pid, read(safer_path), ".safer")
            record["safer"] = {k: v for k, v in safer.items()
                               if k in ("outcome", "release", "message", "stdout", "stderr", "control", "exit")}
        results[pid] = record
        extra = "".join(f" {k}={record[k]['outcome'] if k == 'safer' else record[k]}"
                        for k in ("tool", "safer") if k in record)
        print(f"{lang_id:12} {pid:28} {record['outcome']}{extra}", flush=True)

    with open(raw_path, "w", encoding="utf-8") as f:
        json.dump({"lang": lang_id, "version": version, "results": results}, f, indent=1)
    owner = os.stat(ROOT)
    os.chown(raw_path, owner.st_uid, owner.st_gid)


if __name__ == "__main__":
    main()
