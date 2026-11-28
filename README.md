# BreakBench

**Results: [danpozmanter.github.io/BreakBench](https://danpozmanter.github.io/BreakBench/)**

BreakBench measures 30 programming languages and how they handle correctness and safety. Inspired by
[LangArena](https://github.com/kostya/LangArena), which measures speed and efficiency on correct
programs. BreakBench covers LangArena's 27 languages plus OCaml, Haskell and Clojure.

This is a general signal, and not meant to be an absolute ranking of these languages. The range under each score shows which gaps are settled.

"How much does a language help the programmer avoid production bugs?" is the primary driver.

Score (with tools): the share of tests where the language, with the linters, warnings and sanitizers
its own project ships, stopped the bug. Every test counts the same. It ranks the leaderboard. Beside it:

| Column | What it shows |
|---|---|
| Coverage | How much of the bench the language can attempt, and in how many of the 13 categories. Tests it lacks a feature for (a mutex, threads, a JSON parser) are left out of its scores. |
| By category | Each of the 13 categories counts the same, however many tests it holds: 2 cleanup tests weigh as much as 20 number tests. |
| By severity | Bugs that let an attacker in or corrupt memory count 3 times, bugs that lose data or stall a service twice, local logic slips once. |
| Without tools | The compiler and runtime alone. |

The range under each score shows how far it could move with a different mix of bugs: the bench is
rebuilt 2,000 times from its failure modes picked at random, and 95% of the rescored results land in
the range. Where two languages' ranges overlap, the order between them is not settled.

The Details tab splits the score into tests of language constructs and tests of standard-library
calls, shows the score when a program uses the standard library's safer call for the job, and
breaks results down by category and by failure mode.

Each language runs its latest release, built from LangArena's Dockerfiles or the language's own
images.

## Motivations

- **To see roughly where languages stand on correctness and safety.** In particular to see when one language might excel in a particular area.
- **To push [Gossamer](https://gossamer-lang.org/) forward.** Gossamer aims to be fast and
  efficient, and to make incorrect programs hard to write and correct ones easy. It already scored
  well, and the bench shows where it still has gaps. Results for 0.82.2 and earlier show the gaps
  it has since closed.

## What the score measures

The score measures what a team gets from the language and the tools its own project ships: the
compiler or interpreter, the runtime, the switches that make either refuse more or stop more (checked
arithmetic, a debug build, assertions, strict type checking), and the project's own bug-finding tools:
clippy, `go vet` and the race detector, `gos lint`, `dart analyze`, the .NET analyzers, mypy, compiler
warnings, the Clang Static Analyzer, and AddressSanitizer with UndefinedBehaviorSanitizer. A tool
finding counts only when it points at the bug's lines and the program without the bug does not get
it, and every finding is read by hand. A linter or warning earns 1, since CI that fails on warnings
stops the bug before it ships; a sanitizer report earns 0.25, like a stop only the debug build makes.
Without tools scores the compiler and runtime alone. Third-party checkers count in neither score.

Results separate three layers. Tests of language constructs make the bug with an operator, a cast, a
type, a declaration or control flow; tests of standard-library calls make it through a call such as
a read, a lookup or a process run. Where the same standard library has a safer call for the job
(`io.ReadFull`, `readNBytes`, `try_from`, `Math.addExact`, an argument-list process call), the
program also runs with that call as `<language>/<test>.safer.<ext>`, scored apart from the ranking.
A check the programmer writes by hand is the fourth layer: it is the fixed program every result is
checked against, and any language can write it.

## Tests

130 tests in thirteen categories. Each has a CWE or CERT entry, a CVE, or appears in a language's
pitfall list, and covers a mistake no other test covers; `harness/problems.json` gives each test's
reference and failure mode, and the site's Notes tab maps the failure modes to their tests. Each test is one scenario: the same steps, inputs and
expected answer in every language, written the way that language teaches first. The code follows the
language, so the site lists every place a language could not write a test (N/A), where its design
rules the mistake out, and where its documentation sent a program to another call.
`harness/problems.json` describes each test.

| Category | Tests | The bug |
|---|---|---|
| Numbers | 21 | Arithmetic or a conversion gives the wrong value: overflow, a signed byte used as a table index, the smallest integer divided by -1, a number parsed past its type's range, NaN written to JSON, a loop counter too small for its limit, a narrowing cast, a negative remainder, float equality, a large integer read from JSON, ... |
| Types and API misuse | 12 | A value or call does not fit what it is used with: text passed as a number, a record built without a field, an integer converted to an enum it does not name, a method the base class never calls, a method passed on without its object, ... |
| Aliasing and mutation | 12 | Shared or copied state changes when it should not, or does not when it should: a list changed while looping over it, a snapshot that is an alias, a grid whose rows are one list, a closure that captures the loop variable, a copy updated instead of the original, ... |
| Incomplete code | 4 | A path that ends without a result, a match missing a case, a variable read before it is set |
| Operators | 10 | An operator that means something other than it looks: an assignment in a condition, & next to ==, 1 < x < 3, == on built strings or records, == between text and a number, ... |
| Control flow | 6 | Code that runs in a different order or path than it reads: a dangling else, a case without break, a break that leaves the switch instead of the loop, a return with its value on the next line, ... |
| Names and literals | 5 | A name or literal that silently means something else: a new variable instead of an assignment, a missing comma, a repeated map key, a leading-zero number, ... |
| Error handling | 10 | A failure goes unseen: an ignored result, a catch-all that turns a bug into bad input, a failed run that exits with success, a return in a cleanup block, a cleanup failure that hides the original error, a read that returns part of a message, a buffered file never flushed, a failed command treated as a success, ... |
| Resource cleanup | 2 | A file or lock outlives the code that should remove it: a failure that skips the cleanup, a loop that breaks out of a sequence holding it |
| Security | 10 | Input from outside takes control: command injection, JSON nested deep enough to crash the parser, a NUL byte that cuts a file name short, user text as a format string, an object restored from untrusted bytes, hidden or look-alike characters in source, ... |
| Null safety | 12 | The program uses a value that may be missing as if it were there: a lookup that found nothing, a search that returned -1, a field missing from decoded JSON, a missing name printed as text, a check a later call undoes, an empty pointer passed on as an error, ... |
| Memory safety | 15 | The program reads or writes memory it does not own, or keeps memory it dropped: a reply as long as the sender claims (Heartbleed), use after free, out-of-bounds writes, records never freed, records that keep each other alive, a size that overflows before the allocation, a running total that keeps every message alive, ... |
| Concurrency | 11 | Threads or tasks interfere: a deadlock, an early return that skips the unlock, a failure in the middle of a locked update, a wake-up sent before anyone waits, a timed-out task that keeps running, a worker stuck sending an answer nobody takes, ... |

The bench runs each test once, so it keeps only tests with a stable result: tests whose result
changed across three full runs, in any language, were removed. Gap: bugs that show only on some runs are not measured. Tests every language fails stay,
labelled "No language passes".

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
| UNTIED | The compiler refused the program, but no error points at the bug's lines |
| ERROR | The program without the bug did not give the expected answer, so the result cannot be trusted |
| UNFIXABLE | The error is expressible but the fix is not |
| N/A | The language cannot express the error; excluded from its mean |

### Scoring

| Outcome | Points |
|---|---|
| REJECTED, CORRECT, SAFE_BY_DESIGN | 1 |
| TRAPPED in the build that ships | 0.5 |
| TRAPPED only in the debug build | 0.25 |
| SILENT, CHANCE, CORRUPT, CRASH, HANG, LEAK, ICE, UNTIED, UNFIXABLE, ERROR | 0 |

Points reflect when the bug is caught and whether it does harm: a refusal never ships (1); a clear
stop in the shipped build stops the program (0.5); a stop only in the debug build lets the shipped
build run on (0.25); a wrong answer, corruption or crash does the harm unseen (0). A stop counts only
before the result is printed.

Each program marks its bug: dropping each `BREAK!` line and using each `CONTROL!` line gives the
program without the bug. A compile error is a refusal only if that program compiles and an error
points at the bug (a marked line, a line within three, an enclosing construct, or a type a marked
line names). A failed run counts only if that program gives the expected answer; otherwise ERROR.

Release builds use the standard build tool's release profile with no extra switches; Zig and C3 take
their safe release mode; C and C++ use CMake Release. `assert_side_effect` runs only the release
build, because its bug exists only there.

Categories group results in the ranked score; By category weights them alike. Each test is one program
with one input, so the bench measures a class of mistake through its failure modes: each holds several
tests that make the same kind of mistake in different ways, and the Details tab shows each language's
result per mode. Warnings and linters score through the tools.


## Notes

The site's [Notes tab](https://danpozmanter.github.io/BreakBench/#notes) holds every note in one
place: the build commands for each language, the tools in the score, the release builds, what
counts as standard, the removed tests, the N/A and design rules, the results that are right only by
chance, where the docs sent a program to another call, the safer calls and what they scored, and
each test's limits.

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
    uv run bench.py --jobs 6                    # run six languages at once
    uv run bench.py --aggregate                 # rebuild the rankings and the site
    uv run bench.py --audit                     # list N/A claims a program elsewhere contradicts

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
