# BreakBench

**Results: [danpozmanter.github.io/BreakBench](https://danpozmanter.github.io/BreakBench/)**

BreakBench measures what 30 programming languages do about common bugs. It is inspired by
[LangArena](https://github.com/kostya/LangArena), which measures speed and efficiency on correct
programs, and covers LangArena's 27 languages plus OCaml, Haskell and Clojure.

The question behind every test: can you trust the program to run without error in production, does
the language help you find errors fast, and does it keep you from the big ones, like the
billion-dollar null? It has two benches:

- **Correctness**: each program has one classic bug in it. Does the compiler catch it, does the
  program stop with an error, or does it quietly print the wrong answer?
- **Built-in safety**: which mistakes does the language rule out on its own, before you reach for
  a library?

Each bench scores a language as a percentage, and the **overall** ranking is the mean of the two.
The size of a language's standard library plays no part.

Each language runs its latest release, built from LangArena's Dockerfiles or the language's own
images.

## Motivations

- **To see roughly where languages stand on correctness and safety.**
- **To push [Gossamer](https://gossamer-lang.org/) forward.** Gossamer aims to be fast and
  efficient, and to make incorrect programs hard to write and correct ones easy. It already scored
  well, and the bench shows where it still has gaps. Results for 0.82.2 and earlier show the gaps
  it has since closed.

## Correctness

76 tests: 58 logic and resource bugs (null dereference, overflow, missing match cases, command
injection, deadlocks, a string cut mid-character, leaked file handles, ...) and 18 memory-safety bugs
(use after free, out-of-bounds reads and writes, leaks, ...). Each has a CWE or CERT entry or
appears in a language's pitfall list, reads the same in every language, and covers a mistake no
other test covers. `harness/problems.json` describes each one.

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

| Kind | Scores 1 | Partial credit |
|---|---|---|
| static (visible before running) | refused or correct | stopped at run time: 0.5 |
| dynamic (depends on input) | refused, correct or stopped | |
| memory | as dynamic | wrong but memory-safe: 0.5 |
| leak | memory stays bounded | |
| valid (a correct program) | runs to completion | |

- **Warnings** add 0.25, never a full point, when the toolchain's own compiler or checker flags the
  bug in words the test's `warn` pattern matches. File paths, quoted strings, echoed source and
  color codes are stripped first, so a program's own text earns nothing.
- **Must-use**: ignoring a result the language marks must-use (`#[must_use]`, `[[nodiscard]]`,
  and the unused-result warnings of Swift, F# and Mojo) counts as a refusal.
- **Controls**: a compile error counts as a refusal only if the same program without the bug
  compiles. That version, the control, drops each `BREAK!` line and uses each `CONTROL! <code>`
  line in its place.
- **N/A**: a test the language cannot write (a mutex in JavaScript, regex in Zig) scores 0, the
  same as a failure, in both benches. A language that can write it but lacks the bug scores
  CORRECT. Each N/A program says why in a `CANNOT-EXPRESS:` line.
- **Score**: the mean over all tests, as a percentage.

**Robustness.** The site also scores the results five other ways: a run-time stop counts as a
refusal, no warning bonus, correctness and memory weighed 50/50, near-universal passes removed, and
N/A left out of the average. Under every scheme Gossamer and Rust stay first and second and JavaScript stays
last. Swift, Haskell, F# and Zig trade third place, and no language moves more than eight places.

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

Both benches allow:

- the language and its standard library;
- libraries the language's own project publishes, such as Rust's `regex`, Go's
  `golang.org/x/text`, Kotlin's `kotlinx.serialization` and Haskell's `aeson` (each `docker/` file
  lists them);
- ISO C and POSIX.1 for C and C++;
- the JVM or .NET class library for languages on those platforms;
- every package GHC ships, for Haskell.

GNU and BSD extensions, third-party packages and FFI do not count.

## Built-in safety

Each test is a small task tied to a common mistake, such as `optional_type` for `null_deref` or
`exhaustive_return` for `missing_return`. `harness/probes.json` lists all 58. Built-in safety asks
what the language itself prevents:

- 43 compiler-checked tests need the compiler to refuse the unsafe version: a match that misses a
  case, a null in a non-null type, two mutable references to one value, a narrowing conversion
  without a cast, an integer where an enum belongs, a sort of values with no ordering, a statement
  after a return, a constant index past the end of an array. A dynamic language passes one only
  when its build step refuses the line, as Python's compiler refuses `i = i++`.
- 15 language-feature tests need a safe construct or rule in the language: value types, typed
  errors, cleanup blocks, memory freed without a free call, arguments evaluated left to right,
  preconditions in a function's declaration, records that compare by content. Some check behavior
  at run time, such as a frozen record refusing a change, an enum refusing 7, or a forced unwrap
  of a missing value stopping the program, so dynamic languages can pass them.

Null safety has three tests here: `optional_type` (the compiler refuses using a maybe-missing value
as a value), `nonnull_reference` (a plain reference cannot hold null) and `forced_unwrap` (forcing
a missing value out stops the program). The correctness bench adds `null_deref` and
`missing_key_default`.

A compiler-checked test marks the offending lines `REJECT!`. The bench runs the program without
them, then builds it with them, and that build must fail or report a must-use diagnostic. The site
shows the refusal. A language whose compiler accepts the line says so in a `CANNOT-EXPRESS:` line,
with what the compiler does instead.

The bench ranks languages by the share of these tests they pass. A test notes whether its construct
comes from the language or its standard library, but only pass or fail counts.

## Overall

The overall ranking is the mean of the two bench scores: the correctness score and the share of
built-in safety tests passed. Each bench weighs half.

An earlier ecosystem coverage bench asked which safety tools ship with each language. It measured
the size of a standard library rather than safety, so it was removed.

## Running

Requires `docker`, `docker compose` and [`uv`](https://docs.astral.sh/uv/).

    sh build-docker.sh                          # build the images
    uv run bench.py                             # full run of every bench
    uv run bench.py rust gossamer               # rerun some languages
    uv run bench.py c --only use_after_free     # rerun some tests
    uv run bench.py --express rust              # rerun the built-in safety tests
    uv run bench.py --aggregate                 # rebuild the rankings and the site

Each full run writes a folder named for its start time, `results/YYYY-MM-DDTHHMMSSZ/`, holding raw
results in `raw/` and the rankings in `correctness.json`, `coverage.json` (built-in safety) and
`overall.json`. Partial runs update the newest folder. The site goes to `docs/index.html`.

## Layout

    <language>/<test>.<ext>             correctness tests
    <language>/express/<test>.<ext>     built-in safety tests
    harness/problems.json               correctness tests and scoring
    harness/probes.json                 built-in safety tests
    harness/langs.json                  build and run commands
    harness/driver.py                   builds, runs and classifies inside each container
    bench.py                            runs the containers and ranks the results
    docker/, docker-compose.yaml        toolchain images
    docs/page.html                      the site source

## Limits

- Each container gets 3 GB of memory (swap included) and 4,096 processes. A run times out after
  20 s (120 s for leak tests). A leak is peak memory over 1,024 MB. `fd_leak` runs with 512 file
  descriptors.
- Tests with a race run ten times and keep the worst outcome.
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
- `by_design` in `problems.json` marks a failure that the language's own documentation names,
  along with its fix. The site outlines those cells, and they still score as measured. Only
  `reference_cycle_leak` qualifies: Rust (`Weak<T>`), Swift (`weak`), C++ (`std::weak_ptr`) and
  Gossamer (`[weak o]`, warning GL0063).
- Each program is written the way the language's documentation teaches first: `Option` where the
  standard library returns one, and the default length, list and integer types. A shared map uses
  the language's standard lock-free update where it has one (a Clojure atom, Haskell's
  `atomicModifyIORef'`). A byte buffer is sliced with its platform's slice call.
