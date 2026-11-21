import std/[algorithm, math, sequtils]

var xs = @[5.0, NaN, 3.0, 1.0, NaN, 4.0, 2.0]
xs.sort()
let finite = xs.filterIt(not it.isNaN)
echo(if finite.isSorted: "ordered" else: "unordered")
