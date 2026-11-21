import std/strutils

var session = newSeq[byte](64)
for i, c in "SECRET-TOKEN":
  session[32 + i] = byte(c)
session = @[]
let reply = newSeq[byte](64)
var hex = ""
for b in reply[32 ..< 44]:
  hex.add toHex(b).toLowerAscii
echo hex
