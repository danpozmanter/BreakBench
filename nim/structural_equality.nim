type P = object
  x, y: int

let a = P(x: 1, y: 2)
let b = P(x: 1, y: 2)
echo if a == b: "equal" else: "different"
