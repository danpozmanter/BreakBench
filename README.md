# BreakBench

BreakBench measures what 30 programming languages do about common bugs. It is inspired by
[LangArena](https://github.com/kostya/LangArena), which measures speed and efficiency on correct
programs, and covers LangArena's 27 languages plus OCaml, Haskell and Clojure. It has three benches:

- **Correctness**: each program has one classic bug in it. Does the compiler catch it, does the
  program stop with an error, or does it quietly print the wrong answer?
- **Built-in safety**: which mistakes does the language rule out on its own, before you reach for
  a library?
- **Library coverage**: which safety tools come with the language, and which do you have to find
  on a package registry?

Each language runs its latest release, built from LangArena's Dockerfiles or the language's own
images.

## Motivations

- **To see roughly where languages stand on correctness and safety.**
- **To push [Gossamer](https://gossamer-lang.org/) forward.** Gossamer aims to be fast and
  efficient, and to make incorrect programs hard to write and correct ones easy. It already scored
  well, and the bench shows where it still has gaps. Results for 0.82.2 and earlier show the gaps
  it has since closed.

## Correctness

73 problems: 55 logic bugs (null dereference, overflow, missing match cases, command injection,
deadlocks, ...) and 18 memory-safety bugs (use after free, out-of-bounds writes, leaks, ...). Each
has a CWE or CERT entry or appears in a language's pitfall list, reads the same in every language,
and tests a mistake no other problem tests. `harness/problems.json` describes each one.

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
| N/A | The language cannot write the program |

### Scoring

| Kind | Scores 1 | Partial credit |
|---|---|---|
| static (visible before running) | refused or correct | stopped at run time: 0.5 |
| dynamic (depends on input) | refused, correct or stopped | |
| memory | as dynamic | wrong but memory-safe: 0.5 |
| leak | memory stays bounded | |
| valid (a correct program) | runs to completion | |

- **Warnings** add 0.25, never a full point, when the toolchain's own compiler or checker flags the
  bug in words the problem's `warn` pattern matches. File paths, quoted strings, echoed source and
  color codes are stripped first, so a program's own text earns nothing.
- **Must-use**: ignoring a result the language marks must-use (`#[must_use]`, `[[nodiscard]]`,
  Swift's unused-result warning) counts as a refusal.
- **Controls**: a compile error counts as a refusal only if the same program without the bug
  compiles. That version, the control, drops each `BREAK!` line and uses each `CONTROL! <code>`
  line in its place.
- **N/A**: a problem the language cannot write (a mutex in JavaScript, regex in Zig) does not count
  toward its score. A language that can write it but lacks the bug scores CORRECT. Each N/A
  program says why in a `CANNOT-EXPRESS:` line.
- **Score**: the mean over the problems the language can write, times 100.

**Robustness.** The site also scores the results five other ways: a run-time stop counts as a
refusal, no warning bonus, correctness and memory weighed 50/50, near-universal passes removed, and
N/A counted as 0. Under every scheme Gossamer and Rust stay first and second and JavaScript stays
last. Haskell, Zig and F# trade third place, and no other language moves more than eight places.

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

All three benches allow:

- the language and its standard library;
- libraries the language's own project publishes, such as Rust's `regex`, Go's
  `golang.org/x/text`, Kotlin's `kotlinx.serialization` and Haskell's `aeson` (each `docker/` file
  lists them);
- ISO C and POSIX.1 for C and C++;
- the JVM or .NET class library for languages on those platforms;
- every package GHC ships, for Haskell.

GNU and BSD extensions, third-party packages and FFI do not count.

## Built-in safety and library coverage

Both benches use probes: small tasks tied to a common mistake, such as `mutex` for
`self_deadlock` or `checked_add` for `int_overflow`. A probe counts only if the language, its
standard library or its project's own libraries can do it. `harness/probes.json` lists all 87
probes and tags each one with its bench.

**Built-in safety** (30 probes) asks what the language itself prevents:

- 20 compiler-checked probes need the compiler to refuse the unsafe version: a match that misses a
  case, a null in a non-null type, two mutable references to one value, a narrowing conversion
  without a cast. Dynamic languages cannot pass these by design.
- 10 language-feature probes need a safe construct in the language: value types, tuples, typed
  errors, cleanup blocks, 128-bit and unsigned integers.

A compiler-checked probe marks the offending lines `REJECT!`. The bench runs the program without
them, then builds it with them, and that build must fail or report a must-use diagnostic. The site
shows the refusal.

**Library coverage** (57 probes) asks which safe tools ship with the language: threads and
channels, process control, regular expressions, JSON, exact numbers, data structures, error chains,
and cryptography. Some languages keep a small standard library on purpose and leave these tools to
packages, so this bench is a profile of what ships, not a measure of how safe a language is.

| Result | Meaning |
|---|---|
| Language | Built into the language |
| Standard library | In the standard library |
| Project library | In a library the language's own project publishes |
| C library | ISO C or POSIX (C and C++ only) |
| Not covered | Needs a third-party package, or cannot be done at all; the program says why |
| Broken | Exists but gives the wrong result |

Each probe bench ranks languages by the probes they cover. Neither feeds into the correctness score.

## Running

Requires `docker`, `docker compose` and [`uv`](https://docs.astral.sh/uv/).

    sh build-docker.sh                          # build the images
    uv run bench.py                             # full run of every bench
    uv run bench.py rust gossamer               # rerun some languages
    uv run bench.py c --only use_after_free     # rerun some problems
    uv run bench.py --express rust              # rerun the probes (both probe benches)
    uv run bench.py --aggregate                 # rebuild the rankings and the site

Each full run writes a folder named for its start time, `results/YYYY-MM-DDTHHMMSSZ/`, holding raw
results in `raw/` and the rankings in `correctness.json` and `coverage.json` (both probe benches).
Partial runs update the newest folder. The site goes to `docs/index.html`.

## Layout

    <language>/<problem>.<ext>          correctness programs
    <language>/express/<probe>.<ext>    probe programs (built-in safety and library coverage)
    harness/problems.json               problems and scoring
    harness/probes.json                 probes
    harness/langs.json                  build and run commands
    harness/driver.py                   builds, runs and classifies inside each container
    bench.py                            runs the containers and ranks the results
    docker/, docker-compose.yaml        toolchain images
    docs/page.html                      the site source

## Limits

- Each container gets 3 GB of memory (swap included) and 4,096 processes. A run times out after
  20 s (120 s for leak problems). A leak is peak memory over 1,024 MB. `fd_leak` runs with 512 file
  descriptors.
- Problems with a race run ten times and keep the worst outcome.
- C-family programs keep stale pointers in data structures, so the optimizer cannot remove the
  access.
- Zig's debug allocator never reuses a freed slot, so a stale pointer reads the old record. Odin and
  C3 read the new one.
- `v/loop_closure_capture.v` calls its closures in a loop, because V emits C that clang rejects for
  `fs.map(it())`.
- PHP runs 8.5, the newest packaged release. Mojo includes MAX for `parallelize`.
- A compiler crash records `ICE` and scores 0.
- GHC's default stack limit is 80% of physical memory, so deep recursion in Haskell reaches the
  3 GB cap first and the kernel kills it: `stack_overflow` crashes and `recover_stack_overflow` is
  Broken.
- Nim checks `{.guard.}` only inside procedures, so `lock_owns_data` keeps its code in procedures.
- `clojure -M -m` catches uncaught errors itself, so `unhandled_hook` is Broken for Clojure.
- A regex engine that gives up at a backtracking limit and reports no match counts as correct.
  PHP's `preg_match` returns `false`, which reads as no match.
- `by_design` in `problems.json` marks a failure that the language's own documentation names,
  along with its fix. The site outlines those cells, and they still score as measured. Only
  `reference_cycle_leak` qualifies: Rust (`Weak<T>`), Swift (`weak`), C++ (`std::weak_ptr`) and
  Gossamer (`[weak o]`, warning GL0063).
- Each program is written the way the language's documentation teaches first: `Option` where the
  standard library returns one, and the default length, list and integer types. A shared map uses
  the language's standard lock-free update where it has one (a Clojure atom, Haskell's
  `atomicModifyIORef'`). A byte buffer is sliced with its platform's slice call.
