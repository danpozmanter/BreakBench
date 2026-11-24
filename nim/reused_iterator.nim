let xs = @[1, 2, 3, 4, 5, 6]

iterator evensOf(xs: seq[int]): int {.closure.} =
  for x in xs:
    if x mod 2 == 0: yield x

let evens = evensOf # BREAK!
var total = 0
for x in evens(xs): total += x # CONTROL! for x in evensOf(xs): total += x
var count = 0
for x in evens(xs): inc count # CONTROL! for x in evensOf(xs): inc count
echo total, " ", count
