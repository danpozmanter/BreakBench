var counter = 0

proc worker() {.thread.} =
  for _ in 0 ..< 1_000_000:
    counter += 1 # BREAK!

var threads: array[8, Thread[void]]
for t in threads.mitems:
  createThread(t, worker)
joinThreads(threads)
echo counter
