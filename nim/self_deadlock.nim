import std/locks

var lock: Lock
var balance = 0
initLock(lock)

proc deposit(amount: int) =
  withLock lock:
    balance += amount

withLock lock:
  deposit(10)
echo "done"
