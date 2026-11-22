import std/strutils

var answer: Channel[int]

proc worker() {.thread.} =
  answer.send(parseInt("x"))

answer.open()
var t: Thread[void]
createThread(t, worker)
echo answer.recv()
