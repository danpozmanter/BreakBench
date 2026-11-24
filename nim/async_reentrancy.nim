import std/asyncdispatch

var balance = 100

proc withdraw(amount: int) {.async.} =
  if balance >= amount:
    await sleepAsync(10) # CONTROL! balance -= amount
    balance -= amount # CONTROL! await sleepAsync(10)

proc main() {.async.} =
  await all(withdraw(80), withdraw(80))
  echo balance

waitFor main()
