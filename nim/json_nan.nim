import std/[json, os, strutils]

let count = parseInt(paramStr(1))
let mean = 0.0 / count.float
echo %*{"mean": mean} # CONTROL! echo(if mean != mean: "refused" else: $(%*{"mean": mean}))
