// LEVEL: STD

import Dispatch
import Synchronization

let counter = Mutex(0)
DispatchQueue.concurrentPerform(iterations: 2) { _ in
    for _ in 0..<100_000 { counter.withLock { $0 += 1 } }
}
print(counter.withLock { $0 })
