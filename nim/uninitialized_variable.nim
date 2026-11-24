import std/[os, strutils]

let n = parseInt(paramStr(1))
var x: int # CONTROL! var x = 0
if n > 5: x = 10
echo x
