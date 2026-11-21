import std/sets

type Point = object
  x, y: int
  label: string

proc `==`(a, b: Point): bool = a.x == b.x and a.y == b.y

var s = initHashSet[Point]()
s.incl Point(x: 1, y: 2, label: "a")
s.incl Point(x: 1, y: 2, label: "b")
echo s.len
