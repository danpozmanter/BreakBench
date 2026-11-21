// LEVEL: LANGUAGE

var buf: [UInt8] = []
for i in 0..<100_000 { buf.append(UInt8(truncatingIfNeeded: i)) }
print(buf.count)
