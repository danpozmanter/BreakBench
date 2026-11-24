import std/locks

var lock: Lock
var woken: Cond
initLock(lock)
initCond(woken)
# CONTROL! var ready = false

proc worker() {.thread.} =
  withLock lock:
    wait(woken, lock) # CONTROL! while not ready: wait(woken, lock)
  echo "done"

withLock lock:
  signal(woken) # CONTROL! ready = true; signal(woken)
var t: Thread[void]
createThread(t, worker)
joinThread(t)
