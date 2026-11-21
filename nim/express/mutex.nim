# LEVEL: STD

import std/[locks, typedthreads]

var lock: Lock
var counter = 0

proc work() {.thread.} =
  for _ in 1 .. 100_000:
    withLock lock:
      counter += 1

initLock(lock)
var a, b: Thread[void]
createThread(a, work)
createThread(b, work)
joinThread(a)
joinThread(b)
echo counter
