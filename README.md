# BreakBench

**Results: [danpozmanter.github.io/BreakBench](https://danpozmanter.github.io/BreakBench/)**

BreakBench measures 30 programming languages and how they handle correctness and safety. Inspired by
[LangArena](https://github.com/kostya/LangArena), which measures speed and efficiency on correct
programs. BreakBench covers LangArena's 27 languages plus OCaml, Haskell and Clojure.

This is a general signal, and not meant to be an absolute ranking of these languages. Treat close rankings as inconclusive.

"How much does a language help the programmer avoid production bugs?" is the primary driver.

A language scores the mean over tests it can attempt, as a percentage. Tests marked N/A need a
feature the language lacks (a mutex, threads, a JSON parser); they are excluded from that language's
denominator, not counted against it, and the leaderboard shows their count as Missing features. The
Missing features tab lists, for each language, what it lacks and which test that rules out.

Each language runs its latest release, built from LangArena's Dockerfiles or the language's own
images.

## Motivations

- **To see roughly where languages stand on correctness and safety.** In particular to see when one language might excel in a particular area.
- **To push [Gossamer](https://gossamer-lang.org/) forward.** Gossamer aims to be fast and
  efficient, and to make incorrect programs hard to write and correct ones easy. It already scored
  well, and the bench shows where it still has gaps. Results for 0.82.2 and earlier show the gaps
  it has since closed.

## What the score measures

The score measures the language itself: its compiler or interpreter, its runtime, and the switches
they offer that make the compiler refuse more programs or the program stop on more bugs (checked
arithmetic, a debug build, assertions, strict type checking). Linters, sanitizers and third-party
checkers are left out, even where the language's project ships them (clippy, `go vet`, AddressSanitizer,
mypy). Those tools raise a language's score, and how much each language gets from them varies, so
counting them would measure tooling as much as language design. Python with mypy appears on the
leaderboard as one unranked example of how much a checker adds.

## Tests

122 tests in eight categories. Each has a CWE or CERT entry or appears in a language's pitfall list,
and covers a mistake no other test covers. Each test is one scenario: the same steps, inputs and
expected answer in every language, written the way that language teaches first. The code follows the
language, so the site lists every place a language could not write a test (N/A), where its design
rules the mistake out, and where its documentation sent a program to another call.
`harness/problems.json` describes each test.

| Category | Tests | The bug |
|---|---|---|
| Numbers | 17 | Arithmetic or a conversion gives the wrong value: overflow, a narrowing cast, a negative remainder, float equality, a large integer read from JSON, ... |
| Types and APIs | 29 | A value or call is used the wrong way: text passed as a number, a missing match case, a misspelled field, a list changed while looping over it, a copy taken for a reference, ... |
| Syntax traps | 21 | The code reads as one thing and does another: an assignment in a condition, a dangling else, a missing comma, a stray return, a variable declared where one was meant to be set, ... |
| Error handling | 8 | A failure goes unseen: an ignored result, a return in a cleanup block, a cleanup failure that hides the original error, a read that returns part of a message, a buffered file never flushed, a failed command treated as a success, ... |
| Security | 9 | Input from outside takes control: command injection, a path that escapes its folder, a NUL byte that cuts a file name short, user text as a format string, an object restored from untrusted bytes, hidden or look-alike characters in source, ... |
| Null safety | 11 | The program uses a value that may be missing as if it were there: a lookup that found nothing, a search that returned -1, a missing name printed as text, a check a later call undoes, an empty pointer passed on as an error, ... |
| Memory safety | 15 | The program reads or writes memory it does not own, or keeps memory it dropped: use after free, out-of-bounds writes, records that keep each other alive, a size that overflows before the allocation, a running total that keeps every message alive, ... |
| Concurrency | 12 | Threads or tasks interfere: a deadlock, a check-then-act race, a balance checked before an await and spent after it, an early return that skips the unlock, a wake-up sent before anyone waits, ... |

Every test gives the same result on every run. Tests whose result changed from run to run were
removed; the site's Notes tab names them and says why.

### Outcomes

| Outcome | Meaning |
|---|---|
| REJECTED | The compiler or checker refused the program |
| CORRECT | Right answer, and the language defines the behavior that gave it |
| CHANCE | Right answer, but the language leaves that behavior undefined or unspecified |
| TRAPPED | Stopped at run time with a clear error |
| SILENT | Finished with a wrong answer |
| CORRUPT | Read or wrote memory it does not own |
| CRASH | Segfault, floating-point trap or allocator abort |
| HANG | Never finished |
| LEAK | The program ran out of file descriptors or memory it should have freed |
| SAFE_BY_DESIGN | The language design prevents the error |
| UNFIXABLE | The error is expressible but the fix is not |
| N/A | The language cannot express the error; excluded from its mean |

### Scoring

| Outcome | Points |
|---|---|
| REJECTED, CORRECT, SAFE_BY_DESIGN | 1 |
| TRAPPED in the build that ships | 0.5 |
| TRAPPED only in the debug build | 0.25 |
| SILENT, CHANCE, CORRUPT, CRASH, HANG, LEAK, ICE, UNFIXABLE | 0 |

Two things count: when the bug is caught, and whether it does harm. A refusal catches it before the
program runs, so it never reaches production: 1 point. A clear stop in the shipped build reaches
production, but does no harm past stopping the program: 0.5. A stop only the debug build makes can
be found in testing, but the shipped build runs on past the bug and does the harm: 0.25. A wrong
answer, corruption or a crash does the harm unseen: 0. A stop counts only if it comes before the
program prints its result; once a wrong value is out, the harm is done.

Warnings do not score. Matching a warning to a bug needs a pattern per test, and no pattern tells a
warning about the bug from one that only shares its words. Some languages warn far better than
others; that strength does not show in the score.

A compile error counts as a refusal only if the same program without the bug compiles: that
version, the control, drops each `BREAK!` line and uses each `CONTROL! <code>` line in its place.

## Notes

The site's [Notes tab](https://danpozmanter.github.io/BreakBench/#notes) holds every note in one
place: the build commands for each language, the release builds, what counts as standard, the removed
tests, the N/A and design rules, the results that are right only by chance, where the docs sent a
program to another call, the paths that cost points, and each test's limits.

## History

BreakBench once had a second bench, built-in safety, that asked whether a language could write the
safe version of a task. It double counted: most of its tests asked about the same mistake as a
correctness test. Its tests that covered a new mistake became correctness tests with the bug in
them, and the rest were dropped. An ecosystem coverage bench measured the size of a standard
library rather than safety, so it was removed too.

## Running

Requires `docker`, `docker compose` and [`uv`](https://docs.astral.sh/uv/).

    sh build-docker.sh                          # build the images
    uv run bench.py                             # full run of every test
    uv run bench.py rust gossamer               # rerun some languages
    uv run bench.py c --only use_after_free     # rerun some tests
    uv run bench.py --aggregate                 # rebuild the rankings and the site

Each full run writes a folder named for its start time, `results/YYYY-MM-DDTHHMMSSZ/`, holding raw
results in `raw/` and the ranking in `results.json`. Partial runs update the newest folder. The site goes to `docs/index.html`.

## Layout

    <language>/<test>.<ext>             tests
    harness/problems.json               tests, categories and scoring
    harness/langs.json                  build and run commands
    harness/driver.py                   builds, runs and classifies inside each container
    bench.py                            runs the containers and ranks the results
    docker/, docker-compose.yaml        toolchain images
    docs/page.html                      the site source
