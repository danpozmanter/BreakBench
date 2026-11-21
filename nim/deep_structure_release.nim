import std/[os, strutils]

type Node = ref object
  value: int
  next: Node

proc buildAndRelease(n: int): int =
  var head: Node = nil
  for i in 0 ..< n:
    head = Node(value: i, next: head)
  if head == nil: 0 else: head.value

discard buildAndRelease(parseInt(paramStr(1)))
echo "done"
