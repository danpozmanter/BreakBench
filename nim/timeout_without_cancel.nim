import std/asyncdispatch

var balance = 100

proc charge(gate: Future[void]) {.async.} =
  await gate
  balance -= 30

proc main() {.async.} =
  let gate = newFuture[void]("gate")
  let attempt = charge(gate)
  if not await attempt.withTimeout(100):
    gate.complete()
    await charge(gate) # BREAK!
  await attempt
  echo balance

waitFor main()
