import std/[os, strutils]

let s = parseInt(paramStr(1))
let one = 1'u64
echo one shl s
