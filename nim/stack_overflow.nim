import std/[os, strutils]

proc walk(n: int): int =
  if n == 0: return 0
  (walk(n - 1) * 31 + n) mod 1_000_000_007

echo walk(parseInt(paramStr(1)))
