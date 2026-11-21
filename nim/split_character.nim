import std/[os, strutils]

let name = "a👍b"
let n = parseInt(paramStr(1))
echo name[0 ..< n]
