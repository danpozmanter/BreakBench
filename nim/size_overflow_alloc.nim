import std/[os, strutils]

let count = parseInt(paramStr(1))
let size = count * 8
var records = newSeq[byte](size)
records[8] = 99
echo "stored"
