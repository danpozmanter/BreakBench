import std/strutils

var answer: Channel[int] # CONTROL! var answer: Channel[tuple[ok: bool, n: int]]

proc worker() {.thread.} =
  answer.send(parseInt("x")) # BREAK!
  # CONTROL! try:
    # CONTROL! answer.send((true, parseInt("x")))
  # CONTROL! except ValueError:
    # CONTROL! answer.send((false, 0))

answer.open()
var t: Thread[void]
createThread(t, worker)
echo answer.recv() # CONTROL! let got = answer.recv(); echo(if got.ok: $got.n else: "failed")
