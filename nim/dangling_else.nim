import std/[os, strutils]

let a = parseInt(paramStr(1)) != 0
let b = true
var r = "unset"
if a:
  if b:
    r = "both"
else:
  r = "not a"
echo r
