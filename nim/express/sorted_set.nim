# LEVEL: PROJECT

import std/[sequtils, strutils]
import fusion/btreetables

var s = initTable[int, bool]()
for v in [3, 1, 2]:
  s[v] = true
echo toSeq(s.keys).mapIt($it).join(" ")
