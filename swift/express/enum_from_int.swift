// LEVEL: LANGUAGE

enum Color: Int {
    case red, green, blue
}

print("before")
let n = Int(CommandLine.arguments[1])!
if let c = Color(rawValue: n) {
    print(c)
} else {
    print("invalid")
}
