import Foundation

// write(toFile:) throws, and Swift requires the program to handle it.
do {
    try "data\n".write(toFile: "/dev/full", atomically: false, encoding: .utf8)
    print("saved")
} catch {
    print("failed")
}
