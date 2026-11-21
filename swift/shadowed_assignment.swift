import Foundation

var status = "pending"
if CommandLine.arguments[1] == "ok" {
    let status = "done" // CONTROL! status = "done"
    FileHandle.standardError.write("status: \(status)\n".data(using: .utf8)!)
}
print(status)
