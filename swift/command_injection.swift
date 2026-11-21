import Foundation

let msg = CommandLine.arguments[1]
try? FileManager.default.removeItem(atPath: "/tmp/bb_pwned")
let p = Process()
p.executableURL = URL(fileURLWithPath: "/bin/echo")
p.arguments = [msg]
p.standardOutput = FileHandle.nullDevice
try? p.run()
p.waitUntilExit()
print(FileManager.default.fileExists(atPath: "/tmp/bb_pwned") ? "injected" : "safe")
