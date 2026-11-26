import std/strutils

proc base(): int

let limit = base() * 2 # BREAK!
let baseValue = parseInt("10")
# CONTROL! let limit = base() * 2

proc base(): int = baseValue

echo limit
