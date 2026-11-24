import std/[os, strutils]

let n = parseBiggestInt(paramStr(1))
echo n + 1 # CONTROL! echo n.uint64 + 1
