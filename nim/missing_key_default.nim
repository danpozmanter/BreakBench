import std/[os, tables]

let stock = {"apple": 3, "plum": 4}.toTable
let name = paramStr(1)
echo stock[name] + 5
