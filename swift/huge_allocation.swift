let n = Int(CommandLine.arguments[1])!
var buf = [UInt8](repeating: 0, count: n)
buf[n - 1] = 1
print(buf.count)
