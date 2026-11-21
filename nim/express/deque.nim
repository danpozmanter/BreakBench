# LEVEL: STD

import std/deques

var d = initDeque[int]()
d.addLast(1)
d.addFirst(0)
d.addLast(2)
echo d.popFirst(), " ", d.popLast()
