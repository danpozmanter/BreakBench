import std/[os, strutils]

type Color = enum
  red, green, blue

echo "before"
echo Color(parseInt(paramStr(1))) # CONTROL! let n = parseInt(paramStr(1)); echo(if n in Color.low.ord .. Color.high.ord: $Color(n) else: "invalid")
