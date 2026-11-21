# LEVEL: STD

import std/[os, strutils]

try:
  discard parseInt(paramStr(1))
  echo "valid"
except ValueError:
  echo "invalid"
