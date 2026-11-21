# LEVEL: STD

import std/typedthreads

var slots: array[10, int]

proc fill(start: int) {.thread.} =
  for i in start ..< start + 5:
    slots[i] = i

var a, b: Thread[int]
createThread(a, fill, 0)
createThread(b, fill, 5)
joinThread(a)
joinThread(b)
var sum = 0
for x in slots: sum += x
echo sum
