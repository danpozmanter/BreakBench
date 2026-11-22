func findName(_ id: Int) -> String? {
    id == 1 ? "alice" : nil
}

let name = findName(Int(CommandLine.arguments[1])!)
print("hello, \(name)")
