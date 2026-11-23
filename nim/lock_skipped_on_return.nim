import std/locks

var lock: Lock
var balance = 100
initLock(lock)

proc withdraw(amount: int) =
  acquire(lock)
  if amount > balance:
    return
  balance -= amount
  release(lock)

proc worker() {.thread.} =
  withdraw(30)

withdraw(500)
var t: Thread[void]
createThread(t, worker)
joinThread(t)
echo balance
