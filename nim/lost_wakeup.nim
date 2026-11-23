import std/locks

var lock: Lock
var woken: Cond
initLock(lock)
initCond(woken)

proc worker() {.thread.} =
  withLock lock:
    wait(woken, lock)
  echo "done"

withLock lock:
  signal(woken)
var t: Thread[void]
createThread(t, worker)
joinThread(t)
