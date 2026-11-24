struct Frame {
    var buf: [Int]
    var guard_: Int
}

var f = Frame(buf: [0, 0, 0, 0], guard_: 7)
let idx = Int(CommandLine.arguments[1])!
f.buf[idx] = 99 // CONTROL! if f.buf.indices.contains(idx) { f.buf[idx] = 99 }
print(f.guard_)
