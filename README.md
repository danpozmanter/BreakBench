# BreakBench

**Results: [danpozmanter.github.io/BreakBench](https://danpozmanter.github.io/BreakBench/)**

BreakBench measures what 30 programming languages do about common bugs. It is inspired by
[LangArena](https://github.com/kostya/LangArena), which measures speed and efficiency on correct
programs, and covers LangArena's 27 languages plus OCaml, Haskell and Clojure. Every program runs
twice: in the language's strictest mode, which sets the score, and with the bare toolchain, shown
beside it as Default. Python's strict mode includes mypy, the Python project's own type checker.

"How much does a language help the programmer avoid production bugs?"

A language scores the mean over tests it can attempt, as a percentage. Tests marked N/A need a
feature the language lacks (a mutex, threads, a JSON parser); they are excluded from that language's
denominator, not counted against it, and the leaderboard shows their count as Missing features. The
Missing features tab lists, for each language, what it lacks and which test that rules out.

Each language runs its latest release, built from LangArena's Dockerfiles or the language's own
images.

## Motivations

- **To see roughly where languages stand on correctness and safety.**
- **To push [Gossamer](https://gossamer-lang.org/) forward.** Gossamer aims to be fast and
  efficient, and to make incorrect programs hard to write and correct ones easy. It already scored
  well, and the bench shows where it still has gaps. Results for 0.82.2 and earlier show the gaps
  it has since closed.

## Tests

126 tests in eight categories. Each has a CWE or CERT entry or appears in a language's pitfall list,
reads the same in every language, and covers a mistake no other test covers.
`harness/problems.json` describes each one.

| Category | Tests | The bug |
|---|---|---|
| Numbers | 17 | Arithmetic or a conversion gives the wrong value: overflow, a narrowing cast, a negative remainder, float equality, a large integer read from JSON, ... |
| Types and APIs | 30 | A value or call is used the wrong way: text passed as a number, a missing match case, a misspelled field, a list changed while looping over it, a copy taken for a reference, ... |
| Syntax traps | 21 | The code reads as one thing and does another: an assignment in a condition, a dangling else, a missing comma, a stray return, a variable declared where one was meant to be set, ... |
| Error handling | 9 | A failure goes unseen: an ignored result, a return in a cleanup block, a cleanup failure that hides the original error, a read that returns part of a message, a buffered file never flushed, a failed command treated as a success, ... |
| Security | 9 | Input from outside takes control: command injection, a path that escapes its folder, a NUL byte that cuts a file name short, user text as a format string, an object restored from untrusted bytes, hidden or look-alike characters in source, ... |
| Null safety | 11 | The program uses a value that may be missing as if it were there: a lookup that found nothing, a search that returned -1, a missing name printed as text, a check a later call undoes, an empty pointer passed on as an error, ... |
| Memory safety | 15 | The program reads or writes memory it does not own, or keeps memory it dropped: use after free, out-of-bounds writes, records that keep each other alive, a size that overflows before the allocation, a running total that keeps every message alive, ... |
| Concurrency | 14 | Threads or tasks interfere: a counter that loses increments, a deadlock, a check-then-act race, a balance checked before an await and spent after it, an early return that skips the unlock, a wake-up sent before anyone waits, ... |

The site breaks each language's score down by category, and reports the share of tests caught
before running (refused by the compiler or checker, or prevented by design).

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
| LEAK | The program ran out of file descriptors or memory it should have freed |
| SAFE_BY_DESIGN | The language design prevents the error; scores 1 |
| UNFIXABLE | The error is expressible but the fix is not; scores 0 |
| N/A | The language cannot express the error; excluded from its mean |

### Scoring

| Outcome | Points |
|---|---|
| REJECTED: refused before running | 1 |
| CORRECT: the bug cannot happen | 1 |
| SAFE_BY_DESIGN: the language cannot make the error | 1 |
| Warned before running: the build warned about the bug by name | 0.5 |
| TRAPPED: stopped at run time with a clear error | 0.25 |
| Warned while running: the program warned about the bug by name and went on | 0.25 |
| Stopped at run time only in the debug build | 0.125 |
| SILENT, CORRUPT, CRASH, HANG, LEAK, ICE, UNFIXABLE | 0 |

The rubric rewards stopping a bug before it reaches production. A refusal stops it for certain and
a build warning may, so they earn 1 and 0.5. A bug the program only shows while running, by
stopping or by warning, reaches production unless a test happens to run that path, so it earns
0.25. A stop that only the debug build makes is gone from the release build that ships, so it
earns 0.125. A test scores the highest row that applies; a warning and a stop never add up. The same
table holds for every test, whether the language is compiled or dynamic and whether the bug is a
logic or a memory error.

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
- **N/A and design limits**: `CANNOT-EXPRESS:` cases are excluded from a language's score because
  it cannot construct the error. `CANNOT-MAKE:` means the language or its standard model prevents
  the error and earns 1; a missing feature never counts as prevention (no mutex makes the lock tests
  N/A, not safe). `CANNOT-FIX:` means the error is expressible but cannot be prevented, and
  earns 0. Each marker includes its reason. A missing library call is replaced with what the language
  has when the scenario remains expressible (a loop for the maximum of a list in C).
- **Score**: the mean over counted tests, excluding N/A cases.

### Build modes

The score uses each language's strictest stable mode, at the language version a new project gets:
every compiler check, linter, sanitizer and assertion its standard toolchain ships, the build a
careful team runs while it develops. No experimental switches. The Default column runs the same
programs with the bare toolchain and no extra checks, to show what the strict mode adds. A program
that stops at run time in the strict build is built again the way the language ships, and run
again. If the release build runs on past the bug, the stop scores 0.125 instead of 0.25.

| Language | Strict | Default | Release |
|---|---|---|---|
| C, C++ | `-Weverything`, `-O0 -g -fsanitize=address,undefined -fno-sanitize-recover=undefined` | `clang -g` | `-O2 -D_FORTIFY_SOURCE=3 -fstack-protector-strong -fstack-clash-protection`; C++ adds `-D_GLIBCXX_ASSERTIONS` |
| D (LDC) | debug, `-wi`, `-fsanitize=address` | `ldc2 -g` | `-O -release` |
| Odin | `-debug -vet -vet-cast -vet-nil-deref -vet-uninitialized -vet-using-param -vet-atomic-access -sanitize:address` | `-debug` | `-o:speed` |
| C3 | `-O0 --validation=strict --sanitize=address` (`obnoxious` rejects C3's own standard library) | `-O0` | `-O3` |
| Rust | debug (overflow checks), clippy with `-W clippy::pedantic` | `rustc` debug | `-O` |
| Zig | `-O Debug` | same | `-O ReleaseSafe` |
| Go | `go vet`, `go build` | `go build` | same |
| Swift | `-swift-version 6 -strict-memory-safety -Onone` | `-swift-version 6 -Onone` | `-O` |
| V | `v vet`, debug build | debug build | `-prod` |
| Nim | debug build | same | `-d:release` |
| Crystal | debug build | same | `--release` |
| OCaml | dune dev profile plus `-w +a` (every warning) | dune dev profile | same |
| Haskell | `ghc -Weverything -O0`, less the warnings about module metadata (Safe Haskell mode, import lists, specialisations) | `ghc -O0` | `-O1` |
| Clojure | AOT compile, `*warn-on-reflection*` | AOT compile | same |
| Goose | `goose --debug` | without `--debug` | without `--debug`, `cc -O2` |
| Mojo | `-O0 -D ASSERT=all` | default | default |
| Gossamer | `gos lint`, `gos build` | `gos build` | `gos build --release` |
| C# | Debug, checked arithmetic, `AnalysisMode=All`, warning level 9999, nullable | the `dotnet new console` project | Release, unchecked arithmetic |
| F# | Debug, `--checked+`, warning level 5, nullness checks, the opt-in warnings | the default project | Release, unchecked arithmetic |
| Java | `-Xlint:all`, `-ea` | `javac`, `java` | without `-ea` |
| Kotlin | `-Wextra -progressive`, `-ea` | `kotlinc`, `java` | without `-ea` |
| Scala | `-Wall -deprecation -feature -unchecked` and every other stable `-W` warning, `-ea` | `scalac`, `java` | without `-ea` |
| Dart | `dart analyze` with `package:lints/recommended` and strict casts, inference and raw types (analyzer errors fail the build), `--enable-asserts` | `dart compile kernel`, `dart` | `dart compile exe` |
| TypeScript | `--strict` and every extra check flag | `tsc` (TypeScript 7 turns `--strict` on by default) | same |
| JavaScript | `"use strict"` | same | same |
| PHP | `strict_types=1`, `E_ALL` to stderr, assertions on | `php` (programs keep `strict_types=1`) | `zend.assertions=-1` |
| Julia | `--check-bounds=yes --depwarn=yes --warn-overwrite=yes` | `julia` | default bounds checking |
| Python | `mypy --strict`, `--warn-unreachable` and every optional error code, `-X dev` | `python3` | same |
| Ruby | `-w` at check and run | `ruby` | same |

Where two modes conflict, the bench uses the one that catches more: AddressSanitizer over
ThreadSanitizer, and Go's default runtime over `-race`, which turns off its deadlock detector.
`harness/langs.json` has every command.

### What counts as standard

Tests may use:

- the language and its standard library;
- libraries and tools the language's own project publishes, such as Rust's `regex`, Go's
  `golang.org/x/text`, Kotlin's `kotlinx.serialization`, Haskell's `aeson` and Python's mypy
  (each `docker/` file lists them);
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
  20 s per run. `fd_leak` runs with 512 file descriptors and counts an explicit too-many-open-files
  failure as a leak. `reference_cycle` drops 12 GB of pairs and `lazy_accumulator` reads
  12 GB of messages, four times the cap, so a program that frees them finishes and one that keeps
  them runs out of memory; an out-of-memory kill or allocation failure there counts as a leak. RSS is recorded neither for scoring nor display.
- Tests whose outcome can change from run to run run several times and keep the worst outcome,
  stopping early once a run scores 0: `use_after_close` (a write through a freed C `FILE`) and
  `concurrent_map_write` (an unlocked race) up to fifty times, `racy_counter` five times, `hash_matches_equality` (Swift seeds
  its hash per run, so equal elements meet only sometimes) up to twenty, and the release build of
  `concurrent_map_write` up to 500, since Zig's release build crashes on that race only now and
  then. The lock-order and check-then-act cases use rendezvous points to control their
  schedules.
- C-family programs keep stale pointers in data structures, so the optimizer cannot remove the
  access. Rust's `huge_allocation` passes its buffer to `std::hint::black_box` for the same
  reason: a real program uses its buffer, so the release build may not drop the allocation.
- Zig's debug allocator never reuses a freed slot, so a stale pointer reads the old record. Odin and
  C3 read the new one.
- `v/loop_closure_capture.v` calls its closures in a loop, because V emits C that clang rejects for
  `fs.map(it())`.
- PHP runs 8.5, the newest packaged release. Mojo includes MAX for `parallelize`.
- A compiler crash records `ICE` and scores 0.
- GHC's default stack limit is 80% of physical memory, so deep recursion in Haskell reaches the
  3 GB cap first and the kernel kills it, so `stack_overflow` crashes.
- A regex engine that gives up at a backtracking limit and reports no match counts as correct.
  PHP's `preg_match` returns `false`, which reads as no match.
- In the development build C's null dereference and C++'s `*` on an empty `std::optional` stop
  the program: the first through UndefinedBehaviorSanitizer, the second through a libstdc++
  assertion. Both are undefined behavior; where the release build runs on, the stop scores 0.125.
- C and C++ leave the order of a call's arguments unspecified. Clang and GCC both run them left to
  right in this build, so `evaluation_order` prints `1 2` and scores as correct.
- V reads the line after a bare `return` as the value to return, so in a function that returns
  nothing, any statement after `return` fails to build. That refuses `unreachable_code`, though not
  through a check for unreachable code.
- Nim's `max` of an empty sequence reads past the end and answers a garbage number; the
  `IndexDefect` surfaces only after the program has printed it. A test may name an `answer`
  pattern: a run that prints a matching result did not stop at the bug, so `empty_max` scores
  Nim's run as a wrong answer, not a stop.
- `blocking_in_async` uses async/await only where the language and its standard library can run
  it (Rust's standard library has no executor, so Rust uses threads), otherwise threads, tasks or
  goroutines. A language without a blocking sleep in its asynchronous model (JavaScript) cannot
  stall it this way and runs correctly.
- `async_reentrancy` runs only where the standard library schedules asynchronous tasks; elsewhere it
  is N/A, since its threaded form is `check_then_act`. OCaml, F#, Haskell and Clojure have no early
  return, so `lock_skipped_on_return` unlocks after the conditional and cannot skip it.
- `unsafe_deserialization` counts as prevented by design where the standard decoders build only the
  type the program declares, and is N/A where the standard library has no decoder. `short_read`
  uses the language's usual process call, so a language whose usual call returns the whole output
  reads all of it. `unflushed_writer` is judged by what the file holds after the program exits.
- Each program is written the way the language's documentation teaches first, unless the
  documentation for the call it would use sends that situation to another call (`pickle` to JSON for
  untrusted data, `os.system` to `subprocess`); then it follows the docs. Programs use `Option`
  where the standard library returns one, and the default length, list and integer types. A shared
  map uses the language's standard lock-free update where it has one (a Clojure atom, Haskell's
  `atomicModifyIORef'`). A byte buffer is sliced with its platform's slice call. The site's Notes
  tab lists each program the docs redirected, and where a safer call in the same standard library
  would still score better, with links to the documentation.