import std/[os, strutils]

let count = parseInt(paramStr(1))
# CONTROL! if count > (1 shl 27):
  # CONTROL! echo "too large"
  # CONTROL! quit(0)
let size = count * 8
var records = newSeq[byte](size)
records[8] = 99
echo "stored"
