import Foundation

let path = "/tmp/bb_close.txt"
FileManager.default.createFile(atPath: path, contents: nil)
let handle = try FileHandle(forWritingTo: URL(fileURLWithPath: path))
try handle.write(contentsOf: Data("a".utf8))
try handle.close()
try handle.write(contentsOf: Data("b".utf8)) // BREAK!
print("ok")
