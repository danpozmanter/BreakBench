import std/[os, strutils]

let n = parseInt(paramStr(1))
let name = case n
  of 1: "one"
  of 2: "two"
  else: "other"
echo name
