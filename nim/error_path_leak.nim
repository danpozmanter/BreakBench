import std/[os, strutils]

proc process(request: string, id: int) =
  var buf = newSeq[byte](4096)
  let text = request & "#" & $id
  for i, c in text: buf[i] = byte(c)
  if buf[0] != byte('{'): raise newException(ValueError, "invalid request")

let n = parseInt(paramStr(1))
var failures = 0
for i in 0 ..< n:
  try:
    process("not json", i)
  except ValueError:
    inc failures
echo(if failures == n: "done" else: "unexpected")
