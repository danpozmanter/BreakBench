# LEVEL: STD

import std/typedthreads

var failures: Channel[string]

proc work() {.thread.} =
  try:
    raise newException(ValueError, "bad input")
  except ValueError as e:
    failures.send(e.msg)

failures.open()
var t: Thread[void]
createThread(t, work)
joinThread(t)
let (got, msg) = failures.tryRecv()
if got:
  echo "worker failed: ", msg
