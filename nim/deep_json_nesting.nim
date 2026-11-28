import std/[json, os, strutils]

let depth = parseInt(paramStr(1))
# CONTROL! if depth > 1000: echo "refused"; quit(0)
discard parseJson(repeat('[', depth) & repeat(']', depth))
echo "parsed"
