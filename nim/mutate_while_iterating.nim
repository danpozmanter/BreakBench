import std/[sequtils, strutils]

var xs = @[1, 2, 2, 3]
for x in xs:
  if x == 2:
    xs.delete(xs.find(x))
echo xs.mapIt($it).join(",")
