# LEVEL: STD

import std/strutils

proc inner(): string =
  getStackTrace()

echo(if "inner" in inner(): "inner" else: "missing")
