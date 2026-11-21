# LEVEL: LANGUAGE

import std/[os, strutils]

type Color = enum
  red, green, blue

echo "before"
echo Color(parseInt(paramStr(1)))
