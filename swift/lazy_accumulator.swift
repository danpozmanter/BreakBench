import Foundation

let count = Int(CommandLine.arguments[1])!
let source = FileHandle(forReadingAtPath: "/dev/zero")!
var total = 0
for _ in 0..<count {
    let message = source.readData(ofLength: 4096)
    total += message.count
}
print(total)
