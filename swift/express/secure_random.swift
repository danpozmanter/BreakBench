// LEVEL: STD

import Foundation

var rng = SystemRandomNumberGenerator()
print((0..<16).map { _ in String(format: "%02x", UInt8.random(in: 0...255, using: &rng)) }.joined())
