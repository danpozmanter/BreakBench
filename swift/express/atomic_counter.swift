// LEVEL: STD

import Dispatch
import Synchronization

let counter = Atomic<Int>(0)
DispatchQueue.concurrentPerform(iterations: 2) { _ in
    for _ in 0..<100_000 { counter.add(1, ordering: .relaxed) }
}
print(counter.load(ordering: .relaxed))
