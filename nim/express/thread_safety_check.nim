# LEVEL: LANGUAGE

var results: Channel[int]
var list: seq[int]

proc worker(value: int) {.thread.} =
  results.send(value)

proc unsafeWorker(value: int) {.thread.} = # REJECT!
  list.add(value) # REJECT!

proc main() =
  results.open()
  var workers: array[2, Thread[int]]
  for i in 0 .. 1:
    createThread(workers[i], worker, i + 1)
  joinThreads(workers)
  for _ in 0 .. 1:
    list.add(results.recv())
  var unsafeThread: Thread[int] # REJECT!
  createThread(unsafeThread, unsafeWorker, 3) # REJECT!
  echo list.len

main()
