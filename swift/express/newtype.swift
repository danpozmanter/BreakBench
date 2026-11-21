// LEVEL: LANGUAGE

struct Meters { var v: Double }
struct Seconds { var v: Double }
func + (a: Meters, b: Meters) -> Meters { Meters(v: a.v + b.v) }

let total = Meters(v: 2) + Meters(v: 3)
let wrong = Meters(v: 2) + Seconds(v: 3) // REJECT!
print(total.v)
