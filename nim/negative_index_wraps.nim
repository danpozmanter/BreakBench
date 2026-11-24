import std/[os, strutils]

let readings = @[10, 20, 30]
let i = parseInt(paramStr(1))
echo readings[i] - readings[i - 1] # CONTROL! echo(if i > 0: $(readings[i] - readings[i - 1]) else: "no previous")
