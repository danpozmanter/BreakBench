import std/[os, strutils]

let x = parseInt(paramStr(1))
let even = x and 1 == 0 # BREAK!
# CONTROL! let even = (x and 1) == 0
echo(if even: "even" else: "odd")
