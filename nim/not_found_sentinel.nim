import std/[os, strutils]

let line = paramStr(1)
let pos = line.find(':')
echo line[pos + 1 .. ^1]
