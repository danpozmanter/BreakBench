import Foundation

struct Report: Codable {
    let mean: Double
}

let count = Int(CommandLine.arguments[1])!
let mean = 0.0 / Double(count)
// encode throws, so the text is reached only through a check.
do {
    let data = try JSONEncoder().encode(Report(mean: mean))
    print(String(decoding: data, as: UTF8.self))
} catch {
    print("refused")
}
