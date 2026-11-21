# LEVEL: STD

import std/[critbits, sequtils, strutils]

var m: CritBitTree[int]
m["c"] = 1
m["a"] = 2
m["b"] = 3
echo toSeq(m.keys).join(" ")
