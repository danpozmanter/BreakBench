import std/os

proc add(a, b: int): int = a + b

let raw = paramStr(1)
echo add(raw, 3) # BREAK!
echo raw, add(1, 2)
