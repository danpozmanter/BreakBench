# LEVEL: STD

import std/[atomics, typedthreads]

var counter: Atomic[int]

proc work() {.thread.} =
  for _ in 1 .. 100_000:
    discard counter.fetchAdd(1)

var a, b: Thread[void]
createThread(a, work)
createThread(b, work)
joinThread(a)
joinThread(b)
echo counter.load
