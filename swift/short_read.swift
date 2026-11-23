import Foundation

let child = Process()
child.executableURL = URL(fileURLWithPath: "/bin/sh")
child.arguments = ["-c", "printf HELLO-WO; sleep 0.2; printf RLD-1234"]
let pipe = Pipe()
child.standardOutput = pipe
try child.run()
let message = pipe.fileHandleForReading.readData(ofLength: 16)
child.waitUntilExit()
print(String(decoding: message, as: UTF8.self))
