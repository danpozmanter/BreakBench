import std/[os, sequtils, strutils]

let xs = commandLineParams().map(parseInt)
echo max(xs) + 1 # CONTROL! echo(if xs.len == 0: "no readings" else: $(max(xs) + 1))
