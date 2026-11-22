import std/[asyncdispatch, monotimes, os, times]

proc job() {.async.} =
  sleep(500)

proc main() {.async.} =
  let start = getMonoTime()
  await all(job(), job())
  echo if getMonoTime() - start < initDuration(milliseconds = 800): "concurrent" else: "serial"

waitFor main()
