import std/[os, strutils]

proc size(n: int): string =
  result = "small"
  if n > 5:; # BREAK!
  # CONTROL! if n > 5:
    result = "big"

echo size(parseInt(paramStr(1)))
echo size(parseInt(paramStr(2)))
