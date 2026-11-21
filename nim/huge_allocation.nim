import std/[os, strutils]

let n = parseBiggestInt(paramStr(1))
var buf = newSeq[byte](n)
buf[n - 1] = 1
echo buf.len
