import std/[os, strutils] # CONTROL! import std/[os, strutils, unicode]

let name = "a👍b"
let n = parseInt(paramStr(1))
echo name[0 ..< n] # CONTROL! echo name.runeSubStr(0, n)
