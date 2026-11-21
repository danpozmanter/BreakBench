import std/[os, strutils]

type
  Node = ref object
    next: Node
    payload: seq[byte]
  Obj = ref object
    payload: seq[byte]
    callback: proc(): int

var total = 0
for _ in 0 ..< parseInt(paramStr(1)):
  let a = Node(payload: newSeq[byte](2048))
  let b = Node(next: a, payload: newSeq[byte](2048))
  a.next = b
  let o = Obj(payload: newSeq[byte](2048))
  o.callback = proc(): int = o.payload.len
  total += o.callback()
echo(if total < 0: "unreachable" else: "done")
