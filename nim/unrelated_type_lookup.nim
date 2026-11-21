import std/[os, strutils]

let ids = @[10, 20, 30]
let id = paramStr(1)
echo(if ids.contains(id): "found" else: "missing") # CONTROL! echo(if ids.contains(parseInt(id)): "found" else: "missing")
