import std/[os, strutils]

let x = parseFloat(paramStr(1))
let y = parseFloat(paramStr(2))
let a = x + y
echo(if a == 0.3: "equal" else: "not equal")
