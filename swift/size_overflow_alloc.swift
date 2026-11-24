let count = Int(CommandLine.arguments[1])!
let size = count * 8 // CONTROL! let size = count > 1 << 27 ? 0 : count * 8
var records = [UInt8](repeating: 0, count: size) // CONTROL! if size == 0 { print("too large") } else { var records = [UInt8](repeating: 0, count: size)
records[8] = 99 // CONTROL! records[8] = 99
print("stored") // CONTROL! print("stored") }
