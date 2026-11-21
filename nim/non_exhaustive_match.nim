import std/[os, strutils]

type Color = enum
  Red, Green, Blue

proc name(c: Color): string =
  case c
  of Red: "red"
  of Green: "green"
  # CONTROL! of Blue: "blue"

echo name(Color(parseInt(paramStr(1))))
