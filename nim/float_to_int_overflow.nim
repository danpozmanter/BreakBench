import std/[os, strutils]

let x = parseFloat(paramStr(1))
let v = int64(x) # CONTROL! let v = x
echo v # CONTROL! echo formatFloat(v, ffDecimal, 0).strip(chars = {'.'})
