import std/[os, strutils]

proc isOdd(n: int): bool =
  n mod 2 == 1 # CONTROL! n mod 2 != 0

echo(if isOdd(parseInt(paramStr(1))): "odd" else: "even")
