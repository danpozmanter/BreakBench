import std/asyncdispatch

proc save(store: ref seq[int]) {.async.} =
  await sleepAsync(50)
  store[].add 1

proc main() {.async.} =
  let store = new seq[int]
  save(store) # CONTROL! await save(store)
  echo store[].len

waitFor main()
