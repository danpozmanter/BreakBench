import std/[os, sequtils, strutils]

let xs = commandLineParams().map(parseInt)
echo max(xs) + 1
