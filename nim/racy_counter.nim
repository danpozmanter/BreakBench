import std/[atomics, typedthreads]

var total: Atomic[int]

proc addSafe() {.thread.} =
  for i in 0 ..< 1_000_000: total.atomicInc()

proc main() =
  var count = 0 # BREAK!
  var a, b: Thread[void]
  createThread(a, proc() {.thread.} = (for i in 0 ..< 1_000_000: inc count)) # CONTROL! createThread(a, addSafe)
  createThread(b, proc() {.thread.} = (for i in 0 ..< 1_000_000: inc count)) # CONTROL! createThread(b, addSafe)
  joinThread(a)
  joinThread(b)
  echo count # CONTROL! echo total.load()

main()
