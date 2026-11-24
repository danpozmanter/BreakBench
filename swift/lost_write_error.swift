import Foundation

try "data\n".write(toFile: "/dev/full", atomically: false, encoding: .utf8) // CONTROL! do { try "data\n".write(toFile: "/dev/full", atomically: false, encoding: .utf8); print("saved") } catch { print("failed") }
print("saved") // BREAK!
