# LEVEL: LANGUAGE

import std/[atomics, typedthreads]

var count: Atomic[int]

proc worker() {.thread.} =
  count.atomicInc()

proc main() =
  var t: Thread[void]
  createThread(t, worker)
  joinThread(t)
  echo count.load()
  var plain = 0 # REJECT!
  var u: Thread[void] # REJECT!
  createThread(u, proc() {.thread.} = inc plain) # REJECT!

main()
