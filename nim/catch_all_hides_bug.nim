import std/strutils

proc parseOrder(line: string): int =
  let parts = line.split(",")
  parseInt(parts[2]) # BREAK!
  # CONTROL! parseInt(parts[1])

try:
  echo parseOrder("widget,5")
except CatchableError:
  echo "invalid order"
