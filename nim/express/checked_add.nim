# LEVEL: LANGUAGE

import std/[os, strutils]

let n = parseBiggestInt(paramStr(1))
try:
  discard n + 1
  echo "ok"
except OverflowDefect:
  echo "overflow"
