let v = Int(CommandLine.arguments[1])!
let b = UInt8(v) // CONTROL! let b: UInt8? = UInt8(exactly: v)
print(b) // CONTROL! print(b.map { String($0) } ?? "out of range")
