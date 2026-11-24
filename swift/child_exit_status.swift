import Foundation

let backup = Process()
backup.executableURL = URL(fileURLWithPath: "/bin/sh")
backup.arguments = ["-c", "exit 3"]
try backup.run()
backup.waitUntilExit()
// CONTROL! if backup.terminationStatus != 0 { print("backup failed") } else {
print("backed up") // CONTROL! print("backed up") }
