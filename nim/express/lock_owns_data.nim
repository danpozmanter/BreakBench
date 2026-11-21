# LEVEL: LANGUAGE

import std/locks

var lock: Lock
var debits {.guard: lock.}: int
var credits {.guard: lock.}: int

proc post() {.thread.} =
  for _ in 1 .. 1000:
    withLock lock:
      inc debits
      inc credits

proc main() =
  initLock(lock)
  var workers: array[2, Thread[void]]
  for w in workers.mitems:
    createThread(w, post)
  joinThreads(workers)
  echo debits # REJECT!
  withLock lock:
    echo debits, " ", credits

main()
