import std/[options, os]

proc cachedCount(name: string): Option[int] =
  if name == "ada": some(4) else: none(int)

let cached = cachedCount(paramStr(1))
let count = cached.get(0) + 1
echo count
