final class Rec {
    var data = [UInt8](repeating: 1, count: 4096)
}

let n = Int(CommandLine.arguments[1])!
var seen = 0
for _ in 0..<n {
    let rec = Rec()
    seen += Int(rec.data[0])
}
print(seen == n ? "done" : "lost")
