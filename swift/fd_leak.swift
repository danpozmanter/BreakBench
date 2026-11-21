import Foundation

let n = Int(CommandLine.arguments[1])!
FileManager.default.createFile(atPath: "/tmp/bb_fd.txt", contents: "x".data(using: .utf8))
for _ in 0..<n {
    guard let f = FileHandle(forReadingAtPath: "/tmp/bb_fd.txt") else {
        fatalError("open: too many open files")
    }
    _ = f.readData(ofLength: 1)
}
print("done")
