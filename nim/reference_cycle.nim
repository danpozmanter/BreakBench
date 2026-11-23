import std/[os, strutils]

type Node = ref object
  data: seq[byte]
  other: Node

proc newNode(): Node =
  Node(data: newSeq[byte](4096))

let n = parseInt(paramStr(1))
for _ in 0 ..< n:
  let parent = newNode()
  let child = newNode()
  parent.other = child
  child.other = parent
echo "done"
