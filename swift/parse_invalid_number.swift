let n = Int(CommandLine.arguments[1])! // CONTROL! let n = Int(CommandLine.arguments[1])
print(n + 1) // CONTROL! print(n.map { String($0 + 1) } ?? "invalid")
