import std/[locks, os]

var a, b: Lock
var gateLock: Lock
var gateCond: Cond
var arrivals = 0
initLock(a)
initLock(b)
initLock(gateLock)
initCond(gateCond)

proc rendezvous() =
  acquire(gateLock)
  inc arrivals
  if arrivals == 2:
    broadcast(gateCond)
  else:
    while arrivals < 2:
      wait(gateCond, gateLock)
  release(gateLock)

proc forward() {.thread.} =
  withLock a:
    rendezvous()
    withLock b:
      discard

proc backward() {.thread.} =
  withLock b:
    rendezvous()
    withLock a:
      discard

var t1, t2: Thread[void]
createThread(t1, forward)
createThread(t2, backward)
joinThreads(t1, t2)
echo "finished"
