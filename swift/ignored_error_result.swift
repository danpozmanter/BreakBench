import Foundation

func save(_ path: String) throws {
    try "data".write(toFile: path, atomically: true, encoding: .utf8)
}

save("/dev/null/out.txt") // BREAK!
// CONTROL! try? save("/dev/null/out.txt")
print("saved")
