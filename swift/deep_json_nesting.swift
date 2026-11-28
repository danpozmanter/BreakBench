import Foundation

let depth = Int(CommandLine.arguments[1])!
// CONTROL! if depth > 1000 { print("refused"); exit(0) }
let text = String(repeating: "[", count: depth) + String(repeating: "]", count: depth)
do {
    _ = try JSONSerialization.jsonObject(with: Data(text.utf8))
    print("parsed")
} catch {
    print("refused")
}
