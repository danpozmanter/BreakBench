// LEVEL: LANGUAGE

struct P { var x: Int }

let a = P(x: 1)
var b = a
b.x = 9
print(a.x)
