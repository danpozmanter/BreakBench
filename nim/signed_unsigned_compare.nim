import std/[os, strutils]

let xs = @[1, 2, 3]
let i = parseInt(paramStr(1))
echo(if i < xs.len: "less" else: "not less")
