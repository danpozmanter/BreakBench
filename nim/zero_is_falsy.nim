import std/[options, os, strutils]

let qty = some(parseInt(paramStr(1)))
var present = false
if qty: present = true # BREAK!
# CONTROL! if qty.isSome: present = true
echo(if present: "have " & $qty.get else: "missing")
