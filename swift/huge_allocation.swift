let n = Int(CommandLine.arguments[1])!
var buf = [UInt8](repeating: 0, count: n) // CONTROL! var buf = [UInt8](repeating: 0, count: n > 1 << 30 ? 1 : n)
buf[n - 1] = 1 // CONTROL! if n > 1 << 30 { print("too large") } else { buf[n - 1] = 1
print(buf.count) // CONTROL! print(buf.count) }
