# LEVEL: LANGUAGE

type P = object
  x: int

let a = P(x: 1)
var b = a
b.x = 9
echo a.x
