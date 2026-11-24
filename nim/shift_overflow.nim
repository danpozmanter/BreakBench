import std/[os, strutils]

let s = parseInt(paramStr(1))
let one = 1'u64
echo one shl s # CONTROL! var r = 1.0
# CONTROL! for i in 0..<s: r *= 2
# CONTROL! echo formatFloat(r, ffDecimal, 0).strip(chars = {'.'})
