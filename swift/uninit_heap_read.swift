import Foundation

var session: [UInt8]? = [UInt8](repeating: 0, count: 64)
for (i, b) in "SECRET-TOKEN".utf8.enumerated() {
    session![32 + i] = b
}
session = nil
let reply = [UInt8](repeating: 0, count: 64)
var hex = ""
for b in reply[32..<44] {
    hex += String(format: "%02x", b)
}
print(hex)
