// LEVEL: LANGUAGE

let ready = CommandLine.arguments.count < 5
let x: Int
if ready { x = 5 } else { x = 5 }
let y: Int // REJECT!
if ready { y = 1 } // REJECT!
print(y) // REJECT!
print(x)
