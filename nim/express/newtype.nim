# LEVEL: LANGUAGE

type
  Meters = distinct float
  Seconds = distinct float

proc `+`(a, b: Meters): Meters {.borrow.}
proc `$`(a: Meters): string {.borrow.}

let total = Meters(2.0) + Meters(3.0)
let wrong = Meters(2.0) + Seconds(3.0) # REJECT!
echo total
