import std/locks

var stateLock, gateLock: Lock
var claimed = false
var winners = 0
var arrivals = 0
initLock(stateLock)
initLock(gateLock)

proc rendezvous() {.gcsafe.} =
  acquire(gateLock); inc arrivals; release(gateLock)
  while true:
    acquire(gateLock); let open = arrivals == 2; release(gateLock)
    if open: break

proc claim() {.thread.} =
  var available: bool
  withLock stateLock: available = not claimed # BREAK!
  # CONTROL! withLock stateLock: available = not claimed; claimed = claimed or available
  rendezvous()
  if available:
    withLock stateLock:
      claimed = true
      inc winners

var a, b: Thread[void]
createThread(a, claim)
createThread(b, claim)
joinThreads(a, b)
echo winners
