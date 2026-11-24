struct Frame {
    var buf: [Int]
    var secret: Int
}

let f = Frame(buf: [1, 2, 3, 4], secret: 42)
let idx = Int(CommandLine.arguments[1])!
print(f.buf[idx]) // CONTROL! print(f.buf.indices.contains(idx) ? String(f.buf[idx]) : "out of range")
