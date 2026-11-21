import std/[os, strutils]

var answers: Channel[seq[int]]

proc filled(n, v: int): seq[int] =
  result = newSeq[int](n)
  for x in result.mitems: x = v

proc answer(seed: int) {.thread.} =
  answers.send(filled(8192, seed))

let rounds = parseInt(paramStr(1))
for i in 0 ..< rounds:
  answers.open()
  var workers: array[2, Thread[int]]
  createThread(workers[0], answer, i)
  createThread(workers[1], answer, i + 1)
  let first = answers.recv()
  doAssert first.len == 8192
  joinThreads(workers)
  answers.close()
echo "done"
