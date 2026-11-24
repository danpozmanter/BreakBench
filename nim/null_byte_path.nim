import std/[os, strutils]

createDir("/tmp/bb_files")
writeFile("/tmp/bb_files/report.txt", "secret\n")

let name = "report.txt\0.png"
if not name.endsWith(".png"): # CONTROL! if not name.endsWith(".png") or '\0' in name:
  echo "rejected"
else:
  try:
    stdout.write readFile("/tmp/bb_files/" & name)
  except CatchableError:
    echo "rejected"
