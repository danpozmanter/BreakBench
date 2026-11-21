import std/[locks, os]

var a, b: Lock
initLock(a)
initLock(b)

proc forward() {.thread.} =
  withLock a:
    sleep(100)
    withLock b:
      discard

proc backward() {.thread.} =
  withLock b:
    sleep(100)
    withLock a:
      discard

var t1, t2: Thread[void]
createThread(t1, forward)
createThread(t2, backward)
joinThreads(t1, t2)
echo "finished"
