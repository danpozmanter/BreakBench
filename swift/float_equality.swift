let x = Double(CommandLine.arguments[1])!
let y = Double(CommandLine.arguments[2])!
let a = x + y
print(a == 0.3 ? "equal" : "not equal") // CONTROL! print(abs(a - 0.3) < 1e-9 ? "equal" : "not equal")
