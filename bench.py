# /// script
# requires-python = ">=3.12"
# dependencies = []
# ///
"""Runs BreakBench in each language's container and aggregates the results.

Usage:
    uv run bench.py                        # full run of every test into a new results folder
    uv run bench.py rust gossamer          # rerun languages in the newest folder
    uv run bench.py rust --only int_overflow,oob_write
    uv run bench.py --aggregate            # rebuild the newest folder's rankings and the site
    uv run bench.py --jobs 6               # run six languages at once

Each full run gets a folder named by its UTC start time, results/YYYY-MM-DDTHHMMSSZ, holding
raw/ plus results.json. Partial runs update the newest folder in place.
"""

import argparse
import concurrent.futures
import datetime
import json
import os
import re
import subprocess
import sys
import zoneinfo

ROOT = os.path.dirname(os.path.abspath(__file__))
RESULTS = os.path.join(ROOT, "results")
RUN_NAME = re.compile(r"^\d{4}-\d{2}-\d{2}T\d{6}Z$")
EASTERN = zoneinfo.ZoneInfo("America/New_York")


def run_date(run):
    """The day a run started, in US Eastern time; its folder name holds the UTC start."""
    started = datetime.datetime.strptime(os.path.basename(run), "%Y-%m-%dT%H%M%SZ")
    return started.replace(tzinfo=datetime.timezone.utc).astimezone(EASTERN).date().isoformat()


def newest_run():
    names = sorted(d for d in os.listdir(RESULTS) if RUN_NAME.match(d)) if os.path.isdir(RESULTS) else []
    return os.path.join(RESULTS, names[-1]) if names else None


def new_run():
    name = datetime.datetime.now(datetime.timezone.utc).strftime("%Y-%m-%dT%H%M%SZ")
    path = os.path.join(RESULTS, name)
    os.makedirs(path)
    return path


def load(path):
    with open(os.path.join(ROOT, path), encoding="utf-8") as f:
        return json.load(f)


def run_language(run, lang_id, lang, only):
    cmd = [
        "docker", "compose", "run", "--rm", "-T", "-e", "BB_RUN=" + os.path.relpath(run, ROOT),
        lang["service"], "python3", "/src/harness/driver.py", lang_id, *only,
    ]
    print(f"== {lang['name']}", flush=True)
    return subprocess.run(cmd, cwd=ROOT).returncode


def score_of(problem, rec, kinds):
    """The outcome's points; a stop only the debug build makes scores less. Unexpressible tests are excluded."""
    if rec["outcome"] == "INEXPRESSIBLE":
        return None
    if rec["outcome"] == "SAFE_BY_DESIGN":
        return 1.0
    if rec["outcome"] == "UNFIXABLE":
        return 0.0
    table = kinds[problem["kind"]]
    score = table.get(rec["outcome"], 0.0)
    if debug_only(rec):
        score = table.get("DEBUG_TRAPPED", score)
    return score


TOOL_POINTS = {"FLAGGED": 1.0, "SANITIZED": 0.25}


def tool_score(rec, score):
    """The score with the language's own linters, warnings and sanitizers on; a finding reviewed as
    being about something other than the bug does not count."""
    if score is None:
        return None
    if rec.get("tool_unrelated"):
        return score
    return max(score, TOOL_POINTS.get(rec.get("tool"), 0.0))


def safer_score(problem, rec, score, kinds):
    """The score with the standard library's safer call for the job, where it has one."""
    if score is None or "safer" not in rec:
        return score
    return max(score, score_of(problem, rec["safer"], kinds) or 0.0)


def severity_of(spec):
    """Each test's severity weight: its failure mode's tier unless the test names its own."""
    by_mode = {m: tier["weight"] for tier in spec["severity"]["tiers"] for m in tier["modes"]}
    overrides = spec["severity"].get("overrides", {})
    return {p["id"]: overrides[p["id"]][0] if p["id"] in overrides else by_mode[p["mode"]]
            for p in spec["problems"]}


def mean(pairs):
    """Weighted mean of (value, weight) pairs as a percentage; None values are left out."""
    kept = [(v, w) for v, w in pairs if v is not None]
    total = sum(w for _, w in kept)
    return round(100 * sum(v * w for v, w in kept) / total, 1) if total else None


def debug_only(rec):
    """A run-time stop the debug build made and the release build does not."""
    return rec["outcome"] == "TRAPPED" and rec.get("release", "TRAPPED") not in ("TRAPPED", "CORRECT")


def points(value):
    """Points as a person reads them: 11, 11.5, 11.25."""
    return f"{value:g}"


CATEGORIES = {
    "numbers": "Numbers",
    "api": "Types and API misuse",
    "aliasing": "Aliasing and mutation",
    "incomplete": "Incomplete code",
    "operators": "Operators",
    "control_flow": "Control flow",
    "names": "Names and literals",
    "errors": "Error handling",
    "cleanup": "Resource cleanup",
    "security": "Security",
    "null": "Null safety",
    "memory": "Memory safety",
    "concurrency": "Concurrency",
}
SAFE = {"REJECTED", "CORRECT", "TRAPPED", "SAFE_BY_DESIGN"}


def aggregate(run):
    spec = load("harness/problems.json")
    langs = load("harness/langs.json")
    kinds = spec["kinds"]
    severity = severity_of(spec)
    modes = spec.get("modes", [])
    rows = []
    for lang_id, lang in langs.items():
        path = os.path.join(run, "raw", lang_id + ".json")
        if not os.path.exists(path):
            continue
        raw = load(path)
        per_problem = {}
        by_category = {c: [] for c in CATEGORIES}
        by_mode = {m: [] for m in modes}
        unrelated = lang.get("tools", {}).get("unrelated", {})
        for problem in spec["problems"]:
            rec = raw["results"].get(problem["id"], {"outcome": "MISSING"})
            if rec.get("tool") and problem["id"] in unrelated:
                rec = {**rec, "tool_unrelated": unrelated[problem["id"]]}
            score = score_of(problem, rec, kinds)
            by_mode[problem["mode"]].append(score)
            if score is not None:
                by_category[problem["category"]].append(score)
            per_problem[problem["id"]] = {**rec, "score": score,
                                          "tool_score": tool_score(rec, score),
                                          "safer_score": safer_score(problem, rec, score, kinds)}
        outcomes = [r["outcome"] for r in per_problem.values()]
        counted = [o for o in outcomes if o != "INEXPRESSIBLE"]
        rows.append(
            {
                "id": lang_id,
                "name": lang["name"],
                "homepage": lang.get("homepage", ""),
                "repository": lang.get("repository", ""),
                "dir": lang.get("dir", lang_id),
                "ext": lang["ext"],
                "version": raw.get("version", ""),
                "categories": {c: [sum(scores), len(scores)] for c, scores in by_category.items()},
                "modes": {m: [sum(x for x in xs if x is not None), sum(x is not None for x in xs), len(xs)]
                          for m, xs in by_mode.items()},
                "caught": sum(o in {"REJECTED", "SAFE_BY_DESIGN"} for o in counted),
                "safe": sum(o in SAFE for o in counted),
                "scored": len(counted),
                "missing": len(outcomes) - len(counted),
                "results": per_problem,
            }
        )
    layer = {p["id"]: p["layer"] for p in spec["problems"]}
    category = {p["id"]: p["category"] for p in spec["problems"]}
    for row in rows:
        res = row["results"]
        # The ranked score: every test counts once; a test the language cannot express is left out.
        row["score"] = mean((r["score"], 1) for r in res.values()) or 0.0
        # The same results weighted two other ways: each category alike, and by severity.
        sizes = {c: n for c, (_, n) in row["categories"].items()}
        row["by_category"] = mean((r["score"], 1 / sizes[category[pid]]) for pid, r in res.items()
                                  if r["score"] is not None)
        row["by_severity"] = mean((r["score"], severity[pid]) for pid, r in res.items())
        row["coverage"] = round(100 * row["scored"] / len(res), 1)
        row["language"] = mean((r["score"], 1) for pid, r in res.items() if layer[pid] == "language")
        row["library"] = mean((r["score"], 1) for pid, r in res.items() if layer[pid] == "library")
        row["with_safer"] = mean((r["safer_score"], 1) for r in res.values())
        row["with_tools"] = mean((r["tool_score"], 1) for r in res.values())
    rows.sort(key=lambda r: (-r["score"], -r["caught"] / max(r["scored"], 1), r["name"]))
    for rank, row in enumerate(rows, 1):
        row["rank"] = rank
    ranked = rows
    # Tests where every ranked language scores nothing stay in the bench, labelled.
    unsolved = [p["id"] for p in spec["problems"]
                if not any(row["results"][p["id"]]["score"] for row in ranked)]
    out = {
        "generated": datetime.datetime.now(datetime.timezone.utc).strftime("%Y-%m-%d %H:%M UTC"),
        "date": run_date(run),
        "kinds": kinds,
        "categories": CATEGORIES,
        "modes": modes,
        "severity": spec["severity"],
        "problems": [{**p, "severity": severity[p["id"]]} for p in spec["problems"]],
        "unsolved": unsolved,
        "languages": rows,
    }
    with open(os.path.join(run, "results.json"), "w", encoding="utf-8") as f:
        json.dump(out, f, indent=1, ensure_ascii=False)
    os.makedirs(os.path.join(ROOT, "docs"), exist_ok=True)
    with open(os.path.join(ROOT, "docs", "data.js"), "w", encoding="utf-8") as f:
        f.write("window.BREAKBENCH = ")
        json.dump(site_payload(out), f, ensure_ascii=False, separators=(",", ":"))
        f.write(";\n")
    with open(os.path.join(ROOT, "docs", "page.html"), encoding="utf-8") as f:
        page = f.read()
    with open(os.path.join(ROOT, "docs", "index.html"), "w", encoding="utf-8") as f:
        f.write('<!doctype html>\n<html lang="en">\n<head>\n<meta charset="utf-8">\n'
                '<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n'
                '<style>body{margin:0}[hidden]{display:none!important}</style>\n</head>\n<body>\n')
        f.write(page)
        f.write("\n</body>\n</html>\n")
    for row in rows:
        parts = "  ".join(f"{name.lower()} {points(row['categories'][c][0])}/{row['categories'][c][1]}"
                          for c, name in CATEGORIES.items())
        print(f"{row['rank']:>2}. {row['name']:<13} score {row['score']:5.1f}%  category {row['by_category']:5.1f}%  "
              f"severity {row['by_severity']:5.1f}%  tools {row['with_tools']:5.1f}%  coverage {row['coverage']:5.1f}%  "
              f"language {row['language']:5.1f}%  library {row['library']}%  safer {row['with_safer']}%  {parts}")
    if unsolved:
        print("no language passes: " + ", ".join(unsolved))


def describe_run(rec):
    """One factual line for a run that left no compiler or runtime message."""
    outcome, status = rec["outcome"], rec.get("exit")
    printed = (rec.get("stdout") or "").strip()
    shown = f'printed "{printed[:120]}"' if printed else "printed nothing"
    if outcome == "HANG":
        return f"The program did not finish and was killed after {rec.get('secs')} s."
    if outcome == "LEAK":
        return "The program or operating system reported resource exhaustion."
    if outcome == "CORRECT":
        return f"Built and ran cleanly (exit {status}), {shown}. The output is the expected answer."
    if outcome == "CHANCE":
        return f"Built and ran cleanly (exit {status}), {shown}. The answer is right only by chance."
    if outcome == "REJECTED":
        return "The compiler refused to build the program."
    if outcome == "ERROR":
        return rec.get("control_error") or "The benchmark could not judge this program."
    return (f"Built and ran to the end (exit {status}), {shown}. "
            "No compiler or runtime message flagged the bug.")


RELEASE_WORDS = {
    "SILENT": "it finished with a wrong answer",
    "CORRUPT": "it read or wrote memory it does not own",
    "CRASH": "it crashed",
    "HANG": "it never finished",
    "LEAK": "it ran out of resources",
    "ERROR": "it did not build",
}


def site_payload(out):
    """The site needs the evidence, not every byte of it."""
    langs = []
    for row in out["languages"]:
        results = {}
        for pid, rec in row["results"].items():
            evidence = (rec.get("message") or rec.get("stderr")
                        or describe_run(rec))
            if rec["outcome"] == "CHANCE":
                evidence = f"Printed the expected answer, but only by chance: {rec['message']}."
            if rec["outcome"] == "ERROR":
                evidence = describe_run(rec)
            if rec["outcome"] == "UNTIED":
                evidence = ("The compiler refused the program, but no error points at the bug's lines, "
                            "so the refusal is not counted.\n\n" + evidence)
            if debug_only(rec):
                evidence = (f"The release build did not stop: {RELEASE_WORDS.get(rec['release'], rec['release'])}.\n\n"
                            + evidence)
            results[pid] = {
                "o": rec["outcome"],
                "rel": rec["release"] if debug_only(rec) else "",
                "s": rec["score"],
                "out": (rec.get("stdout") or "")[:160],
                "ev": evidence[:600],
                # The fixed program gave the expected answer ("verified"), or none exists ("none").
                "c": rec.get("control", ""),
                # Compiler output from a build that succeeded; it scores only through the tools.
                "w": (rec.get("build_output") or "")[:600],
                # The language's own tooling: a finding tied to the bug, or a sanitizer report.
                "t": rec.get("tool", ""),
                "tu": rec.get("tool_unrelated", ""),
                "tw": (rec.get("tool_output") or "")[:600],
                "ts": rec["tool_score"],
                # The standard library's safer call for the same job, where one exists.
                "so": rec["safer"]["outcome"] if "safer" in rec else "",
                "ss": rec["safer_score"] if "safer" in rec else None,
            }
        langs.append({k: row[k] for k in ("id", "name", "homepage", "repository", "dir", "ext", "version",
                                           "rank", "score", "by_category", "by_severity", "coverage", "language",
                                           "library", "with_safer", "with_tools", "categories", "modes", "caught",
                                           "safe", "scored", "missing")}
                     | {"results": results})
    return {**{k: out[k] for k in ("date", "kinds", "categories", "modes", "severity", "problems", "unsolved")},
            "languages": langs}


# A feature an N/A reason says the language lacks ("no mutex ..."), and code that shows a program
# of the same language using it. A hit is a claim to check by hand, not a verdict.
FEATURE_USE = {
    r"mutex": r"\b\w*(Mutex|mutex|SpinLock|ReentrantLock)\w*\b|synchronized|MVar",
    r"channel|queue": r"\b\w*([Cc]hannel|Chan\b|chan\b|[Qq]ueue|mailbox)\w*",
    r"condition variable": r"\b\w*([Cc]ondition[Vv]ariable|[Cc]ondvar|Cond\b|pthread_cond)\w*",
    r"regular expression": r"\b\w*(Regex|Regexp|regex|PCRE)\w*\b",
    r"json": r"\b\w*(json|JSON|Json)\w*\b(?!\")",
    r"enum": r"^\s*(pub\s+)?enum\b",
    r"asynchronous task|async": r"\b(async|await)\b",
    r"subprocess|process|pipe": r"\b\w*(Process|subprocess|popen|exec[lv]p?|Command|system)\w*\(",
    r"thread": r"\b\w*(Thread|thread|parallelize|spawn)\w*\(",
    r"serializ|decoder": r"\b\w*(Serializ|serializ|Decode|decode|Unmarshal|unmarshal)\w*\(",
    r"map literal": r"^(?!.*\").*\{\s*\w+\s*[:=]>?\s*\w+\s*,",
}
NO_FEATURE = r"\bno (\w+[ ,]+){{0,4}}?({feature})"


def audit():
    """List each N/A whose missing feature appears in another program of the same language."""
    spec = load("harness/problems.json")
    langs = load("harness/langs.json")
    cannot = re.compile(r"CANNOT-EXPRESS:\s*(.+)")
    found = 0
    for lang_id, lang in langs.items():
        folder = os.path.join(ROOT, lang.get("dir", lang_id))
        sources = {}
        for problem in spec["problems"]:
            path = os.path.join(folder, problem["id"] + "." + lang["ext"])
            if os.path.exists(path):
                with open(path, encoding="utf-8") as f:
                    sources[problem["id"]] = f.read()
        for pid, text in sources.items():
            reason = cannot.search(text)
            if not reason:
                continue
            for feature, use in FEATURE_USE.items():
                if not re.search(NO_FEATURE.format(feature=feature), reason.group(1), re.I):
                    continue
                users = sorted(other for other, body in sources.items()
                               if other != pid and not cannot.search(body)
                               and re.search(use, body, re.M))
                if users:
                    found += 1
                    print(f"{lang_id}/{pid}: says \"{reason.group(1).strip()}\"; "
                          f"{feature} appears in {', '.join(users[:8])}")
    print(f"{found} N/A claims to review")


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("languages", nargs="*")
    parser.add_argument("--only", default="")
    parser.add_argument("--aggregate", action="store_true")
    parser.add_argument("--audit", action="store_true", help="list N/A claims to review")
    parser.add_argument("--jobs", type=int, default=1, help="languages to run at once")
    args = parser.parse_args()
    if args.audit:
        audit()
        return
    run = newest_run()
    if not args.aggregate:
        langs = load("harness/langs.json")
        selected = args.languages or list(langs)
        unknown = [l for l in selected if l not in langs]
        if unknown:
            sys.exit(f"unknown language(s): {', '.join(unknown)}")
        only = [p for p in args.only.split(",") if p]
        full = not (args.languages or only)
        if full or run is None:
            run = new_run()
        with concurrent.futures.ThreadPoolExecutor(max_workers=max(1, args.jobs)) as pool:
            list(pool.map(lambda lang_id: run_language(run, lang_id, langs[lang_id], only), selected))
    if run is None:
        sys.exit("no results yet: run `uv run bench.py` first")
    aggregate(run)
    print(f"results: {os.path.relpath(run, ROOT)}")


if __name__ == "__main__":
    main()
