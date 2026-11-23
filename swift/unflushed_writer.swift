import Foundation

FileManager.default.createFile(atPath: "/tmp/bb_report.txt", contents: nil)
let report = FileHandle(forWritingAtPath: "/tmp/bb_report.txt")!
report.write("total=42\n".data(using: .utf8)!)
