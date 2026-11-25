var answers: Channel[int]

proc worker() {.thread.} =
  answers.send(42)

proc firstAnswer(workers: var array[2, Thread[void]]): int =
  answers.open()
  for w in workers.mitems:
    createThread(w, worker)
  answers.recv()

var workers: array[2, Thread[void]]
echo firstAnswer(workers)
joinThreads(workers)
echo "done"
