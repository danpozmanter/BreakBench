import std/os

var counts: array[256, int]
for c in paramStr(1):
  inc counts[ord(c)]
var high = 0
for b in 128 .. 255:
  high += counts[b]
echo high
