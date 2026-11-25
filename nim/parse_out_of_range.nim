import std/[os, strutils]

let n = parseBiggestInt(paramStr(1)) # BREAK!
echo n # BREAK!
# CONTROL! try:
  # CONTROL! echo parseBiggestInt(paramStr(1))
# CONTROL! except ValueError:
  # CONTROL! echo "invalid"
