import Foundation

let values = [3, 4]
let sum = values.reduce(0, +)
let count = values.count
let avg: Double = sum / count // BREAK!
// CONTROL! let avg: Double = Double(sum) / Double(count)
print(String(format: "%.1f", avg))
