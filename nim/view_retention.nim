import std/[os, strutils]

let n = parseInt(paramStr(1))
var heads: seq[seq[byte]]
var prefixes: seq[string]
for i in 0 ..< n:
  var buf = newSeq[byte](32768)
  for j in 0 ..< buf.len: buf[j] = byte(i and 255)
  heads.add buf[0 ..< 16]
  let big = repeat(char(97 + i mod 26), 32768)
  prefixes.add big[0 ..< 16]
echo heads.len
