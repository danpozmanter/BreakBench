import std/os

const lockPath = "/tmp/bb_scratch/run.lock"

proc checkArgs(): bool =
  if "--version" in commandLineParams():
    echo "1.0"
    quit(0) # BREAK!
    # CONTROL! return true
  false

proc main() =
  writeFile(lockPath, "")
  defer: removeFile(lockPath)
  if checkArgs():
    return
  echo "working"

main()
