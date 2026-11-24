import std/[sequtils, strutils] # CONTROL! import std/[sequtils, strutils, sugar]

var fs: seq[proc(): int]
for i in 0 ..< 3:
  fs.add(proc(): int = i) # CONTROL! capture i: fs.add(proc(): int = i)
echo fs.mapIt($it()).join(",")
