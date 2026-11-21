// LEVEL: STD

import Foundation

final class Slots: @unchecked Sendable {
    var values = [Int](repeating: 0, count: 10)
}

let slots = Slots()
let group = DispatchGroup()
for start in [0, 5] {
    DispatchQueue.global().async(group: group) {
        for i in start..<start + 5 { slots.values[i] = i }
    }
}
group.wait()
print(slots.values.reduce(0, +))
