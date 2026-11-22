let xs = CommandLine.arguments.dropFirst().map { Int($0)! }
let m = xs.max()
print(m + 1) // CONTROL! print((m ?? -1) + 1)
