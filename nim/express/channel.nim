# LEVEL: STD

import std/typedthreads

var ch: Channel[int]

proc work() {.thread.} =
  for v in 1 .. 3:
    ch.send(v)

ch.open()
var t: Thread[void]
createThread(t, work)
var got: seq[string]
for _ in 1 .. 3:
  got.add($ch.recv())
joinThread(t)
echo got[0], " ", got[1], " ", got[2]
