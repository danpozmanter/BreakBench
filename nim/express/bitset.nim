# LEVEL: STD

import std/packedsets

var b = initPackedSet[int]()
b.incl(1000)
echo 1000 in b, " ", 999 in b
