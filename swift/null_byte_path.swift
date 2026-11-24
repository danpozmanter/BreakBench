import Foundation

try? FileManager.default.createDirectory(atPath: "/tmp/bb_files", withIntermediateDirectories: true)
try "secret\n".write(toFile: "/tmp/bb_files/report.txt", atomically: false, encoding: .utf8)

let name = "report.txt\0.png"
if !name.hasSuffix(".png") { // CONTROL! if !name.hasSuffix(".png") || name.contains("\0") {
    print("rejected")
} else if let text = try? String(contentsOfFile: "/tmp/bb_files/" + name, encoding: .utf8) {
    print(text, terminator: "")
} else {
    print("rejected")
}
