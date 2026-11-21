# LEVEL: STD

import std/[os, typedthreads]

var answer: int

proc slow() {.thread.} =
  sleep(50)
  answer = 7

var t: Thread[void]
createThread(t, slow)
echo "started"
joinThread(t)
echo answer
