import std/[os, strutils]

var total: int
# CONTROL! var failed: bool

proc addAll() {.thread.} =
  for i in 1 .. paramCount():
    total += parseInt(paramStr(i)) # BREAK!
    # CONTROL! try:
      # CONTROL! total += parseInt(paramStr(i))
    # CONTROL! except ValueError:
      # CONTROL! failed = true

var worker: Thread[void]
createThread(worker, addAll)
joinThread(worker)
echo "total ", total # CONTROL! echo(if failed: "failed" else: "total " & $total)
