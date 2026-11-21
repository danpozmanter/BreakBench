import std/locks

var lock: Lock
var debits, credits: int
initLock(lock)

proc post() {.thread.} =
  withLock lock:
    debits += 50
    if debits > 0:
      raise newException(ValueError, "crash mid-update")
    credits += 50

var worker: Thread[void]
createThread(worker, post)
joinThread(worker)
withLock lock:
  echo(if debits == credits: "balanced" else: "unbalanced")
