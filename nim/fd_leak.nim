import std/[os, strutils]

let n = parseInt(paramStr(1))
writeFile("/tmp/bb_fd.txt", "x")
for _ in 0 ..< n:
  let f = open("/tmp/bb_fd.txt")
  discard f.readChar()
echo "done"
