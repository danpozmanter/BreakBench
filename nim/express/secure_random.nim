# LEVEL: STD

import std/[strutils, sysrand]

var hexed = ""
for b in urandom(16):
  hexed.add(b.toHex(2).toLowerAscii)
echo hexed
