import std/[os, strutils]

proc grade(score: int): string =
  if score > 50: return "pass"
  if score < 50: return "fail"
  # CONTROL! return "borderline"

echo grade(parseInt(paramStr(1))).escape # CONTROL! echo grade(parseInt(paramStr(1)))
