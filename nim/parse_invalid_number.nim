import std/[os, strutils]

let n = parseInt(paramStr(1)) # BREAK!
echo n + 1 # BREAK!
# CONTROL! try:
  # CONTROL! echo parseInt(paramStr(1)) + 1
# CONTROL! except ValueError:
  # CONTROL! echo "invalid"
