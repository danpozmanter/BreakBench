# LEVEL: STD

import std/[os, typedthreads]

var ch: Channel[int]

proc slow() {.thread.} =
  sleep(5000)
  ch.send(1)

ch.open()
var t: Thread[void]
createThread(t, slow)
var got = false
for _ in 1 .. 10:
  let (ok, _) = ch.tryRecv()
  if ok:
    got = true
    break
  sleep(10)
echo(if got: "done" else: "timed out")
quit(0)
