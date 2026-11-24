import std/[os, strutils]

let v = parseInt(paramStr(1))
let b = uint8(v)
echo b # CONTROL! echo(if v < 0 or v > 255: "out of range" else: $b)
