let line = CommandLine.arguments[1]
let pos = line.firstIndex(of: ":")
print(line[line.index(after: pos)...]) // CONTROL! print(pos.map { line[line.index(after: $0)...] } ?? "")
