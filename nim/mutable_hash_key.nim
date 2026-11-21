import std/sets

var seen = initHashSet[seq[int]]()
var key = @[1, 2]
seen.incl key
key[0] = 9
for e in seen:
  echo(if e in seen: "found" else: "lost")
