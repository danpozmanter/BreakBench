import std/algorithm

type Point = object
  x, y: int

var xs = @[3, 1, 2]
xs.sort()
var ps = @[Point(x: 1, y: 2)] # BREAK!
ps.sort() # BREAK!
echo xs[0]
