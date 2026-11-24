import std/[os, strutils]

let n = parseBiggestInt(paramStr(1))
# CONTROL! if n > (1 shl 30):
  # CONTROL! echo "too large"
  # CONTROL! quit(0)
var buf = newSeq[byte](n)
buf[n - 1] = 1
echo buf.len
