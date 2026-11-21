# LEVEL: LANGUAGE

import std/[os, strutils]

let v = parseInt(paramStr(1))
try:
  let b: range[0 .. 255] = v
  echo "fits ", uint8(b)
except RangeDefect:
  echo "does not fit"
