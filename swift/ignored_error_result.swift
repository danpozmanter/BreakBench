import Foundation

func save(_ path: String) throws {
    try "data".write(toFile: path, atomically: true, encoding: .utf8)
}

save("/nonexistent/dir/out.txt") // BREAK!
// CONTROL! try? save("/nonexistent/dir/out.txt")
print("saved")
