# LEVEL: STD

import std/posix

var stop {.volatile.} = false

proc onTerm(sig: cint) {.noconv.} =
  stop = true

signal(SIGTERM, onTerm)
discard kill(getpid(), SIGTERM)
if stop:
  echo "cleaned up"
