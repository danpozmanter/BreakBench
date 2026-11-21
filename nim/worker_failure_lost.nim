import std/[os, strutils]

var total: int

proc addAll() {.thread.} =
  for i in 1 .. paramCount():
    total += parseInt(paramStr(i))

var worker: Thread[void]
createThread(worker, addAll)
joinThread(worker)
echo "total ", total
