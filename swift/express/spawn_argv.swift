// LEVEL: STD

import Foundation

let p = Process()
p.executableURL = URL(fileURLWithPath: "/bin/echo")
p.arguments = ["hi; touch /tmp/bb_x"]
let pipe = Pipe()
p.standardOutput = pipe
try p.run()
p.waitUntilExit()
print(String(decoding: pipe.fileHandleForReading.readDataToEndOfFile(), as: UTF8.self), terminator: "")
