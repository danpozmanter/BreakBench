let n = Int(CommandLine.arguments[1])!
let letters = Array("abcdefghijklmnopqrstuvwxyz")
var heads: [ArraySlice<UInt8>] = []
var prefixes: [Substring] = []
for i in 0..<n {
    let buf = [UInt8](repeating: UInt8(truncatingIfNeeded: i), count: 32768)
    heads.append(buf.prefix(16))
    let big = String(repeating: letters[i % 26], count: 32768)
    prefixes.append(big.prefix(16))
}
print(heads.count)
