let count = Int(CommandLine.arguments[1])!
let size = count * 8
var records = [UInt8](repeating: 0, count: size)
records[8] = 99
print("stored")
