import std/[os, strutils]

let count = parseInt(paramStr(1))
var source = open("/dev/zero")
var total = 0
for _ in 0 ..< count:
  var message = newSeqUninit[byte](4096)
  total += source.readBytes(message, 0, 4096)
source.close()
echo total
