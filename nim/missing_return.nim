import std/[os, strutils]

proc grade(score: int): string =
  if score > 50: return "pass"
  if score < 50: return "fail"

echo grade(parseInt(paramStr(1))).escape
