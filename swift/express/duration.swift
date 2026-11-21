// LEVEL: STD

let total = Duration.seconds(1.5) + .milliseconds(500)
let n = 5
let wrong = total + n // REJECT!
print(total.components.seconds * 1000 + total.components.attoseconds / 1_000_000_000_000_000)
