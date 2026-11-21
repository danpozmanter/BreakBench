import std/[sequtils, strutils]

var fs: seq[proc(): int]
for i in 0 ..< 3:
  fs.add(proc(): int = i)
echo fs.mapIt($it()).join(",")
