import Foundation

try "data\n".write(toFile: "/dev/full", atomically: false, encoding: .utf8)
print("saved")
