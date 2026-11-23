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

Each full run gets a folder named by its UTC start time, results/YYYY-MM-DDTHHMMSSZ, holding
raw/ plus results.json. Partial runs update the newest folder in place.
"""

import argparse
import datetime
import json
import os
import re
import subprocess
import sys

ROOT = os.path.dirname(os.path.abspath(__file__))
RESULTS = os.path.join(ROOT, "results")
RUN_NAME = re.compile(r"^\d{4}-\d{2}-\d{2}T\d{6}Z$")


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
    """The highest of the outcome's points and the points for a warning that names the bug,
    printed by the build or by the running program; they never add up. Unexpressible tests are excluded."""
    if rec["outcome"] == "INEXPRESSIBLE":
        return None
    if rec["outcome"] == "SAFE_BY_DESIGN":
        return 1.0
    if rec["outcome"] == "UNFIXABLE":
        return 0.0
    table = kinds[problem["kind"]]
    score = table.get(rec["outcome"], 0.0)
    if rec.get("warned"):
        score = max(score, table.get("WARNED", 0.0))
    if rec.get("run_warned"):
        score = max(score, table.get("RUN_WARNED", 0.0))
    return score


def percent(scores):
    return round(100 * sum(scores) / len(scores), 1) if scores else 0.0


CATEGORIES = {
    "correctness": "Correctness",
    "null": "Null safety",
    "memory": "Memory safety",
    "concurrency": "Concurrency",
}
SAFE = {"REJECTED", "CORRECT", "TRAPPED", "SAFE_BY_DESIGN"}


def aggregate(run):
    spec = load("harness/problems.json")
    langs = load("harness/langs.json")
    kinds = spec["kinds"]
    rows = []
    for lang_id, lang in langs.items():
        path = os.path.join(run, "raw", lang_id + ".json")
        if not os.path.exists(path):
            continue
        raw = load(path)
        per_problem = {}
        by_category = {c: [] for c in CATEGORIES}
        for problem in spec["problems"]:
            rec = raw["results"].get(problem["id"], {"outcome": "MISSING"})
            score = score_of(problem, rec, kinds)
            if score is not None:
                by_category[problem["category"]].append(score)
            per_problem[problem["id"]] = {**rec, "score": score}
        outcomes = [r["outcome"] for r in per_problem.values()]
        counted = [o for o in outcomes if o != "INEXPRESSIBLE"]
        caught = sum(o in {"REJECTED", "SAFE_BY_DESIGN"} for o in counted)
        safe = sum(o in SAFE for o in counted)
        mean = [s for scores in by_category.values() for s in scores]
        rows.append(
            {
                "id": lang_id,
                "name": lang["name"],
                "dir": lang.get("dir", lang_id),
                "ext": lang["ext"],
                "version": raw.get("version", ""),
                "score": percent(mean),
                **{c: percent(scores) for c, scores in by_category.items()},
                "caught": round(100 * caught / len(counted), 1) if counted else 0.0,
                "safe": round(100 * safe / len(counted), 1) if counted else 0.0,
                "scored": len(counted),
                "results": per_problem,
            }
        )
    rows.sort(key=lambda r: (-r["score"], -r["correctness"], r["name"]))
    for rank, row in enumerate(rows, 1):
        row["rank"] = rank
    out = {
        "generated": datetime.datetime.now(datetime.timezone.utc).strftime("%Y-%m-%d %H:%M UTC"),
        "kinds": kinds,
        "categories": CATEGORIES,
        "problems": spec["problems"],
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
        parts = "  ".join(f"{name.lower()} {row[c]:5.1f}%" for c, name in CATEGORIES.items())
        print(f"{row['rank']:>2}. {row['name']:<12} score {row['score']:5.1f}%  {parts}")


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
    if outcome == "REJECTED":
        return "The compiler refused to build the program."
    return (f"Built and ran to the end (exit {status}), {shown}. "
            "No compiler or runtime message flagged the bug.")


def site_payload(out):
    """The site needs the evidence, not every byte of it."""
    langs = []
    for row in out["languages"]:
        results = {}
        for pid, rec in row["results"].items():
            evidence = (rec.get("message") or rec.get("stderr")
                        or describe_run(rec))
            results[pid] = {
                "o": rec["outcome"],
                "s": rec["score"],
                "out": (rec.get("stdout") or "")[:160],
                "ev": evidence[:600],
                "w": (rec.get("warnings") or "")[:400] if rec.get("warned") else "",
                "rw": bool(rec.get("run_warned")),
            }
        langs.append({k: row[k] for k in ("id", "name", "dir", "ext", "version", "rank", "score", "caught", "safe",
                                           "scored", *CATEGORIES)} | {"results": results})
    return {**{k: out[k] for k in ("generated", "kinds", "categories", "problems")},
            "languages": langs}


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("languages", nargs="*")
    parser.add_argument("--only", default="")
    parser.add_argument("--aggregate", action="store_true")
    args = parser.parse_args()
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
        for lang_id in selected:
            run_language(run, lang_id, langs[lang_id], only)
    if run is None:
        sys.exit("no results yet: run `uv run bench.py` first")
    aggregate(run)
    print(f"results: {os.path.relpath(run, ROOT)}")


if __name__ == "__main__":
    main()
