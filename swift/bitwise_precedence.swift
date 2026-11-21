let x = Int(CommandLine.arguments[1])!
let even = x & 1 == 0 // BREAK!
// CONTROL! let even = (x & 1) == 0
print(even ? "even" : "odd")
