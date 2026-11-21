func add(_ a: Int, _ b: Int) -> Int { a + b }

let raw = CommandLine.arguments[1]
print(add(raw, 3)) // BREAK!
print(raw, add(1, 2))
