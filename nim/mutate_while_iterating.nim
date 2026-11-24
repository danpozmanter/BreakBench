import std/[sequtils, strutils]

var xs = @[1, 2, 2, 3]
for x in xs: # CONTROL! xs.keepItIf(it != 2)
  if x == 2: # BREAK!
    xs.delete(xs.find(x)) # BREAK!
echo xs.mapIt($it).join(",")
