let x = Int(CommandLine.arguments[1])!
let inside = 1 < x < 3 // BREAK!
// CONTROL! let inside = 1 < x && x < 3
print(inside ? "inside" : "outside")
