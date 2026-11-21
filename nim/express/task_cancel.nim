# LEVEL: STD

import std/[atomics, os, typedthreads]

var cancelled: Atomic[bool]

proc spin() {.thread.} =
  while not cancelled.load:
    sleep(1)

var t: Thread[void]
createThread(t, spin)
sleep(20)
cancelled.store(true)
joinThread(t)
echo "stopped"
