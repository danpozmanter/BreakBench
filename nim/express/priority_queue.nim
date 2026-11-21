# LEVEL: STD

import std/heapqueue

var q = [3, 1, 2].toHeapQueue
var got: seq[string]
while q.len > 0:
  got.add($q.pop())
echo got[0], " ", got[1], " ", got[2]
