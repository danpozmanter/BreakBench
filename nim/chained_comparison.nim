import std/[os, strutils]

let x = parseInt(paramStr(1))
let inside = 1 < x < 3 # BREAK!
# CONTROL! let inside = 1 < x and x < 3
echo(if inside: "inside" else: "outside")
