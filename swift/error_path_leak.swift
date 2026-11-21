struct InvalidRequest: Error {}

func process(_ request: String, _ id: Int) throws {
    var buf = [UInt8](repeating: 0, count: 4096)
    let text = Array("\(request)#\(id)".utf8)
    buf.replaceSubrange(0..<text.count, with: text)
    if buf[0] != UInt8(ascii: "{") { throw InvalidRequest() }
}

let n = Int(CommandLine.arguments[1])!
var failures = 0
for i in 0..<n {
    do { try process("not json", i) } catch { failures += 1 }
}
print(failures == n ? "done" : "unexpected")
