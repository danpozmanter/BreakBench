# LEVEL: LANGUAGE

var n = 0

proc next(): int =
  inc n
  n

proc pair(a, b: int): string = $a & " " & $b

echo pair(next(), next())
