"""Runs every BreakBench problem for one language inside its container.

Usage: python3 harness/driver.py LANG [PROBLEM ...]

BB_MODE=default runs the language's bare build instead of its strict one and
writes RUN/raw/LANG.default.json.

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
    status, timed_out, out, err, secs = execute(run_cmd, work, 20)
    # A test about data reaching a file judges what the file holds once the program has exited.
    if output_file:
        out = read(output_file) if os.path.exists(output_file) else ""
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


CANNOT_RE = re.compile(r"CANNOT-(EXPRESS|MAKE|FIX):\s*(.+?)\s*(?:\*\))?$", re.M)
# The language leaves the marked behavior undefined or unspecified, so a right answer is chance.
UNDEFINED_RE = re.compile(r"UNDEFINED:\s*(.+?)\s*(?:\*\))?$", re.M)
BACKEND_FAILURE_RE = re.compile(r"\.ll:\d+:\d+: error")
def main():
    lang_id = sys.argv[1]
    only = set(sys.argv[2:])
    langs = load_json(os.path.join(ROOT, "harness", "langs.json"))
    spec = load_json(os.path.join(ROOT, "harness", "problems.json"))
    lang = langs[lang_id]
    # The default mode is the bare toolchain: the build a language gives with no extra checks.
    mode = os.environ.get("BB_MODE", "strict")
    if mode == "default":
        lang = {**lang, **lang.get("default", {})}

    raw_dir = raw_folder()
    raw_path = os.path.join(raw_dir, lang_id + (".default" if mode == "default" else "") + ".json")
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

        record["outcome"], status, out, err, secs = run_once(problem, lang["run"], work)
        undefined = UNDEFINED_RE.search(source)
        if undefined and record["outcome"] == "CORRECT":
            record["outcome"] = "CHANCE"
            record["message"] = undefined.group(1).strip()
        # A stop that only the debug build makes is gone from the build that ships.
        if record["outcome"] == "TRAPPED" and lang.get("release"):
            rwork = stage(lang, pid, source, "release")
            rok, rout = build(lang, rwork, lang["release"]["build"])
            if rok:
                rel_outcome, _, rel_out, rel_err, _ = run_once(problem, lang["release"]["run"], rwork)
                record["release"] = rel_outcome
                record["release_stdout"] = clip(rel_out, 400)
                record["release_stderr"] = clip(rel_err, 600)
            else:
                record["release"] = "ERROR"
                record["release_stderr"] = clip(rout, 600)
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
        json.dump({"lang": lang_id, "mode": mode, "version": version, "results": results}, f, indent=1)
    owner = os.stat(ROOT)
    os.chown(raw_path, owner.st_uid, owner.st_gid)


if __name__ == "__main__":
    main()
