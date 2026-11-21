import std/tables

var table = initTable[int, int]()

proc writer(t: int) {.thread.} =
  for k in 0 ..< 100_000:
    table[t * 100_000 + k] = k # BREAK!
    discard k

var threads: array[8, Thread[int]]
for t in 0 ..< 8:
  createThread(threads[t], writer, t)
joinThreads(threads)
echo table.len
