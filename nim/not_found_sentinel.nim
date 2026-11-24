import std/[os, strutils]

let line = paramStr(1)
let pos = line.find(':')
echo line[pos + 1 .. ^1] # CONTROL! echo(if pos < 0: "no colon" else: line[pos + 1 .. ^1])
