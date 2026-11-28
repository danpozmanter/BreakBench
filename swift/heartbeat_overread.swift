import Foundation

let claimed = Int(CommandLine.arguments[1])!
var buf = [UInt8](repeating: 0, count: 64)
buf.replaceSubrange(2..<17, with: Array("SECRET-KEY-0042".utf8))
buf.replaceSubrange(0..<2, with: Array("hi".utf8))
let payload = buf[0..<2]
// CONTROL! if claimed > payload.count { print("invalid"); exit(0) }
let reply = payload[0..<claimed]
print(String(decoding: reply, as: UTF8.self))
