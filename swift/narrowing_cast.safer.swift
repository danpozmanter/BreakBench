let v = Int(CommandLine.arguments[1])!
let b: UInt8? = UInt8(exactly: v)
print(b.map { String($0) } ?? "out of range")
