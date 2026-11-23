import Foundation

let backup = Process()
backup.executableURL = URL(fileURLWithPath: "/bin/sh")
backup.arguments = ["-c", "exit 3"]
try backup.run()
backup.waitUntilExit()
print("backed up")
