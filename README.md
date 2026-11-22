# BreakBench

**Results: [danpozmanter.github.io/BreakBench](https://danpozmanter.github.io/BreakBench/)**

BreakBench measures what 30 programming languages do about common bugs. It is inspired by
[LangArena](https://github.com/kostya/LangArena), which measures speed and efficiency on correct
programs, and covers LangArena's 27 languages plus OCaml, Haskell and Clojure.

The question behind every test: can you trust the program to run without error in production, does
the language help you find errors fast, and does it keep you from the big ones, like the
billion-dollar null? Each test is an ordinary program with one classic bug in it. Does the compiler
catch it, does the program stop with a clear error, or does it quietly print the wrong answer?

A language scores the mean over all 110 tests, as a percentage. The size of a language's standard
library plays no part.

Each language runs its latest release, built from LangArena's Dockerfiles or the language's own
images.

## Motivations

- **To see roughly where languages stand on correctness and safety.**
- **To push [Gossamer](https://gossamer-lang.org/) forward.** Gossamer aims to be fast and
  efficient, and to make incorrect programs hard to write and correct ones easy. It already scored
  well, and the bench shows where it still has gaps. Results for 0.82.2 and earlier show the gaps
  it has since closed.

## Tests

110 tests in four categories. Each has a CWE or CERT entry or appears in a language's pitfall list,
reads the same in every language, and covers a mistake no other test covers.
`harness/problems.json` describes each one.

| Category | Tests | The bug |
|---|---|---|
| Correctness | 80 | The program computes the wrong answer or loses data: overflow, a missing match case, arguments in the wrong order, a misspelled name, a comparison where an assignment was meant, command injection, a write error lost at close, ... |
| Null safety | 5 | The program uses a value that may be missing as if it were there, or prints it |
| Memory safety | 17 | The program reads or writes memory it does not own, or never frees it: use after free, out-of-bounds reads and writes, leaks, ... |
| Concurrency | 8 | Threads or tasks interfere: a data race, a deadlock, a failure lost between threads, ... |

The site breaks each language's score down by category, and reports two more shares: tests caught
before running (refused by the compiler or checker) and tests with no silent failure (refused, run
correctly or stopped with a clear error).

### Outcomes

| Outcome | Meaning |
|---|---|
| REJECTED | The compiler or checker refused the program |
| CORRECT | Right answer; the bug cannot happen |
| TRAPPED | Stopped at run time with a clear error |
| SILENT | Finished with a wrong answer |
| CORRUPT | Read or wrote memory it does not own |
| CRASH | Segfault, floating-point trap or allocator abort |
| HANG | Never finished |
| LEAK | Passed the memory limit, or the kernel killed it |
| N/A | The language cannot write the program; scores 0 |

### Scoring

| Outcome | Points |
|---|---|
| REJECTED: refused before running | 1 |
| CORRECT: the bug cannot happen | 1 |
| Warned before running: the build warned about the bug by name | 0.5 |
| TRAPPED: stopped at run time with a clear error | 0.25 |
| Warned while running: the program warned about the bug by name and went on | 0.25 |
| SILENT, CORRUPT, CRASH, HANG, LEAK, ICE, N/A | 0 |

The rubric rewards stopping a bug before it reaches production. A refusal stops it for certain and
a build warning may, so they earn 1 and 0.5. A bug the program only shows while running, by
stopping or by warning, reaches production unless a test happens to run that path, so it earns
0.25. A test scores the highest row that applies; a warning and a stop never add up. The same
table holds for every test, whether the language is compiled or dynamic and whether the bug is a
logic or a memory error. The one exception is `deep_structure_release`, a correct program that
must run to the end: refusing, stopping or warning about it scores 0.

- **Warnings** count when the toolchain's own compiler or checker, or the running program, names
  the bug in words the test's `warn` pattern matches. File paths, quoted strings, echoed source
  and color codes are stripped first, so a program's own text earns nothing. For a dynamic
  language, warnings from its check step (`ruby -c`, `py_compile`, `php -l`) count as build
  warnings; warnings it prints only when the program loads or runs count as run-time warnings.
- **Must-use**: ignoring a result the language marks must-use (`#[must_use]`, `[[nodiscard]]`,
  and the unused-result warnings of Swift, F# and Mojo) counts as a refusal.
- **Controls**: a compile error counts as a refusal only if the same program without the bug
  compiles. That version, the control, drops each `BREAK!` line and uses each `CONTROL! <code>`
  line in its place.
- **N/A**: a test the language cannot write (a mutex in JavaScript, regex in Zig) scores 0, the
  same as a failure. A language that can write it but lacks the bug scores
  CORRECT. Each N/A program says why in a `CANNOT-EXPRESS:` line.
- **Score**: the mean over all tests, as a percentage.

### Build mode

Each language builds in the strictest stable mode its toolchain offers, at the language version a
new project gets. No experimental switches.

| Language | Mode |
|---|---|
| C, C++ | `-O0 -g -fsanitize=address,undefined -fno-sanitize-recover=undefined`, LangArena's warnings |
| D (LDC) | debug, `-fsanitize=address` |
| Odin | `-debug -vet -sanitize:address` |
| C3 | `-O0 --sanitize=address` |
| Rust | debug (overflow checks), clippy |
| Zig | `-O Debug` |
| Go | `go vet`, `go build` |
| Swift | `-swift-version 6 -Onone` |
| V | `v vet`, debug build |
| Nim, Crystal | debug build |
| OCaml | dune dev profile (warnings are errors) |
| Haskell | `ghc -Wall` |
| Clojure | AOT compile, `*warn-on-reflection*` |
| Goose | `goose --debug` |
| Mojo | `-O0 -D ASSERT=all` |
| Gossamer | `gos lint`, `gos build` |
| C#, F# | Debug, checked arithmetic; C# runs every .NET analyzer |
| Java, Kotlin, Scala | `-Xlint:all` or `-Wall`, `-ea` |
| Dart | `dart analyze` with `package:lints/recommended`, `--enable-asserts` |
| TypeScript | `--strict` and every extra check flag |
| JavaScript | `"use strict"` |
| PHP | `strict_types=1`, `E_ALL`, assertions on |
| Julia | `--check-bounds=yes` |
| Python | `-X dev` |
| Ruby | `-w` |

Where two modes conflict, the bench uses the one that catches more: AddressSanitizer over
ThreadSanitizer, and Go's default runtime over `-race`, which turns off its deadlock detector.
`harness/langs.json` has every command.

### What counts as standard

Tests may use:

- the language and its standard library;
- libraries the language's own project publishes, such as Rust's `regex`, Go's
  `golang.org/x/text`, Kotlin's `kotlinx.serialization` and Haskell's `aeson` (each `docker/` file
  lists them);
- ISO C and POSIX.1 for C and C++;
- the JVM or .NET class library for languages on those platforms;
- every package GHC ships, for Haskell.

GNU and BSD extensions, third-party packages and FFI do not count.

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

## Limits

- Each container gets 3 GB of memory (swap included) and 4,096 processes. A run times out after
  20 s (120 s for leak tests). A leak is peak memory over 1,024 MB. `fd_leak` runs with 512 file
  descriptors.
- Tests whose outcome can change from run to run (races, and `use_after_close`, which writes
  through a freed C `FILE` in some languages) run up to fifty times and keep the worst outcome,
  stopping early once a run scores 0. Fifty runs catch an outcome that happens one time in twenty
  with about 92% probability.
- C-family programs keep stale pointers in data structures, so the optimizer cannot remove the
  access.
- Zig's debug allocator never reuses a freed slot, so a stale pointer reads the old record. Odin and
  C3 read the new one.
- `v/loop_closure_capture.v` calls its closures in a loop, because V emits C that clang rejects for
  `fs.map(it())`.
- PHP runs 8.5, the newest packaged release. Mojo includes MAX for `parallelize`.
- A compiler crash records `ICE` and scores 0.
- GHC's default stack limit is 80% of physical memory, so deep recursion in Haskell reaches the
  3 GB cap first and the kernel kills it, so `stack_overflow` crashes.
- Nim checks `{.guard.}` only inside procedures, so `lock_owns_data` keeps its code in procedures.
- A regex engine that gives up at a backtracking limit and reports no match counts as correct.
  PHP's `preg_match` returns `false`, which reads as no match.
- In this build mode C's null dereference and C++'s `*` on an empty `std::optional` stop the
  program: the first through UndefinedBehaviorSanitizer, the second through a libstdc++ assertion
  that fires in this unoptimized build. Both are undefined behavior, so other builds may run on.
- C and C++ leave the order of a call's arguments unspecified. Clang and GCC both run them left to
  right in this build, so `evaluation_order` prints `1 2` and scores as correct.
- V reads the line after a bare `return` as the value to return, so in a function that returns
  nothing, any statement after `return` fails to build. That refuses `unreachable_code`, though not
  through a check for unreachable code.
- `by_design` in `problems.json` marks a failure that the language's own documentation names,
  along with its fix. The site outlines those cells, and they still score as measured. Only
  `reference_cycle_leak` qualifies: Rust (`Weak<T>`), Swift (`weak`), C++ (`std::weak_ptr`) and
  Gossamer (`[weak o]`, warning GL0063).
- Each program is written the way the language's documentation teaches first: `Option` where the
  standard library returns one, and the default length, list and integer types. A shared map uses
  the language's standard lock-free update where it has one (a Clojure atom, Haskell's
  `atomicModifyIORef'`). A byte buffer is sliced with its platform's slice call.
