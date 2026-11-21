import std/[sets, strutils]

let a = parseFloat("nan")
let b = parseFloat("nan")
var s = initHashSet[float]()
s.incl a
echo if b in s: "found" else: "missing"
