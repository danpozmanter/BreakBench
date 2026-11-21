# /// script
# requires-python = ">=3.12"
# dependencies = []
# ///
"""Runs BreakBench in each language's container and aggregates the results.

Usage:
    uv run bench.py                        # full run of both benches into a new results folder
    uv run bench.py rust gossamer          # rerun languages in the newest folder
    uv run bench.py rust --only int_overflow,oob_write
    uv run bench.py --express [LANG ...]   # the built-in safety tests
    uv run bench.py --aggregate            # rebuild the newest folder's rankings and the site

Each full run gets a folder named by its UTC start time, results/YYYY-MM-DDTHHMMSSZ, holding
raw/ plus correctness.json, coverage.json and overall.json. Partial runs update the newest folder in place.
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


def run_language(run, lang_id, lang, only, express=False):
    mode = ["--express"] if express else []
    cmd = [
        "docker", "compose", "run", "--rm", "-T", "-e", "BB_RUN=" + os.path.relpath(run, ROOT),
        lang["service"], "python3", "/src/harness/driver.py", lang_id, *mode, *only,
    ]
    print(f"== {lang['name']}", flush=True)
    return subprocess.run(cmd, cwd=ROOT).returncode


def score_of(problem, rec, kinds, bonus):
    """A relevant warning lifts an imperfect outcome by `bonus`, never to a full point.
    A test the language cannot express (N/A) scores 0."""
    if rec["outcome"] == "INEXPRESSIBLE":
        return 0.0
    score = kinds[problem["kind"]].get(rec["outcome"], 0.0)
    if rec.get("warned") and score < 1:
        score = min(score + bonus, 0.99 if score + bonus >= 1 else score + bonus)
    return round(score, 2)


def percent(scores):
    return round(100 * sum(scores) / len(scores), 1)


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
        totals = {"correctness": [], "memory": []}
        for problem in spec["problems"]:
            rec = raw["results"].get(problem["id"], {"outcome": "MISSING"})
            score = score_of(problem, rec, kinds, spec.get("warned_bonus", 0.25))
            totals[problem["category"]].append(score)
            per_problem[problem["id"]] = {**rec, "score": score}
        every = totals["correctness"] + totals["memory"]
        rows.append(
            {
                "id": lang_id,
                "name": lang["name"],
                "version": raw.get("version", ""),
                "correctness": percent(totals["correctness"]),
                "memory": percent(totals["memory"]),
                "score": percent(every),
                "scored": sum(per_problem[p["id"]]["outcome"] != "INEXPRESSIBLE"
                              for p in spec["problems"]),
                "results": per_problem,
            }
        )
    rows.sort(key=lambda r: (-r["score"], -r["correctness"], r["name"]))
    for rank, row in enumerate(rows, 1):
        row["rank"] = rank
    out = {
        "generated": datetime.datetime.now(datetime.timezone.utc).strftime("%Y-%m-%d %H:%M UTC"),
        "kinds": kinds,
        "leak_threshold_mb": spec["leak_threshold_mb"],
        "problems": spec["problems"],
        "languages": rows,
    }
    with open(os.path.join(run, "correctness.json"), "w", encoding="utf-8") as f:
        json.dump(out, f, indent=1, ensure_ascii=False)
    os.makedirs(os.path.join(ROOT, "docs"), exist_ok=True)
    express = aggregate_express(run, langs)
    with open(os.path.join(run, "coverage.json"), "w", encoding="utf-8") as f:
        json.dump(express, f, indent=1, ensure_ascii=False)
    overall = combine(rows, express)
    with open(os.path.join(run, "overall.json"), "w", encoding="utf-8") as f:
        json.dump(overall, f, indent=1, ensure_ascii=False)
    with open(os.path.join(ROOT, "docs", "data.js"), "w", encoding="utf-8") as f:
        f.write("window.BREAKBENCH = ")
        json.dump(site_payload(out) | {"express": express_payload(express), "overall": overall}, f,
                  ensure_ascii=False, separators=(",", ":"))
        f.write(";\n")
    with open(os.path.join(ROOT, "docs", "page.html"), encoding="utf-8") as f:
        page = f.read()
    with open(os.path.join(ROOT, "docs", "index.html"), "w", encoding="utf-8") as f:
        f.write('<!doctype html>\n<html lang="en">\n<head>\n<meta charset="utf-8">\n'
                '<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n'
                '<style>body{margin:0}[hidden]{display:none!important}</style>\n</head>\n<body>\n')
        f.write(page)
        f.write("\n</body>\n</html>\n")
    for row in overall:
        print(f"{row['rank']:>2}. {row['name']:<12} overall {row['overall']:5.1f}%  "
              f"correctness {row['correctness']:5.1f}%  built-in {row['builtin']:5.1f}%")


def combine(rows, express):
    """The overall ranking: the mean of the correctness and built-in safety scores, each a percentage."""
    total = sum(p["bench"] == "builtin" for p in express["probes"])
    covered = {row["id"]: row for row in express["languages"]}
    ranked = []
    for row in rows:
        probes = covered.get(row["id"])
        if probes is None:
            continue
        parts = {
            "correctness": row["score"],
            "builtin": round(100 * probes["builtin"] / total, 1),
        }
        ranked.append({"id": row["id"], "name": row["name"], **parts,
                       "overall": round(sum(parts.values()) / len(parts), 1)})
    ranked.sort(key=lambda r: (-r["overall"], r["name"]))
    for rank, row in enumerate(ranked, 1):
        row["rank"] = rank
    return ranked


def aggregate_express(run, langs):
    spec = load("harness/probes.json")
    rows = []
    for lang_id, lang in langs.items():
        path = os.path.join(run, "raw", "express", lang_id + ".json")
        if not os.path.exists(path):
            continue
        raw = load(path)
        results = {p["id"]: raw["results"].get(p["id"], {"outcome": "MISSING"})
                   for p in spec["probes"]}
        passed = {pid for pid, r in results.items() if r["outcome"] == "PASS"}
        rows.append({
            "id": lang_id,
            "name": lang["name"],
            "version": raw.get("version", ""),
            "expressed": len(passed),
            "builtin": sum(p["id"] in passed for p in spec["probes"] if p["bench"] == "builtin"),
            "results": results,
        })
    rows.sort(key=lambda r: (-r["expressed"], r["name"]))
    for rank, row in enumerate(rows, 1):
        row["rank"] = rank
    return {"groups": spec["groups"], "probes": spec["probes"], "languages": rows}


def express_payload(express):
    langs = []
    for row in express["languages"]:
        results = {
            pid: {"o": r["outcome"], "l": r.get("level", ""),
                  "ev": (r.get("refusal") or r.get("message") or r.get("stderr")
                         or r.get("stdout") or "")[:500]}
            for pid, r in row["results"].items()
        }
        langs.append({k: row[k] for k in ("id", "name", "rank", "expressed")} | {"results": results})
    return {"groups": express["groups"], "probes": express["probes"], "languages": langs}


def describe_run(rec, threshold_mb):
    """One factual line for a run that left no compiler or runtime message."""
    outcome, status = rec["outcome"], rec.get("exit")
    printed = (rec.get("stdout") or "").strip()
    shown = f'printed "{printed[:120]}"' if printed else "printed nothing"
    peak = f'{rec["rss_mb"]} MB peak' if rec.get("rss_mb") is not None else "peak memory unknown"
    if outcome == "HANG":
        return f"The program did not finish and was killed after {rec.get('secs')} s."
    if outcome == "LEAK":
        return (f"The program finished {shown} with {peak}, over the {threshold_mb} MB "
                "limit for this test.")
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
                        or describe_run(rec, out["leak_threshold_mb"]))
            results[pid] = {
                "o": rec["outcome"],
                "s": rec["score"],
                "out": (rec.get("stdout") or "")[:160],
                "ev": evidence[:600],
                "rss": rec.get("rss_mb"),
                "w": (rec.get("warnings") or "")[:400],
            }
        langs.append({k: row[k] for k in ("id", "name", "version", "rank", "score",
                                           "correctness", "memory", "scored")} | {"results": results})
    return {**{k: out[k] for k in ("generated", "kinds", "leak_threshold_mb", "problems")},
            "languages": langs}


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("languages", nargs="*")
    parser.add_argument("--only", default="")
    parser.add_argument("--aggregate", action="store_true")
    parser.add_argument("--express", action="store_true")
    args = parser.parse_args()
    run = newest_run()
    if not args.aggregate:
        langs = load("harness/langs.json")
        selected = args.languages or list(langs)
        unknown = [l for l in selected if l not in langs]
        if unknown:
            sys.exit(f"unknown language(s): {', '.join(unknown)}")
        only = [p for p in args.only.split(",") if p]
        full = not (args.languages or only or args.express)
        if full or run is None:
            run = new_run()
        benches = [False, True] if full else [args.express]
        for express in benches:
            for lang_id in selected:
                run_language(run, lang_id, langs[lang_id], only, express)
    if run is None:
        sys.exit("no results yet: run `uv run bench.py` first")
    aggregate(run)
    print(f"results: {os.path.relpath(run, ROOT)}")


if __name__ == "__main__":
    main()
