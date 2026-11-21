// LEVEL: STD

import Dispatch
import Synchronization

struct Ledger {
    var debits = 0
    var credits = 0
}

let ledger = Mutex(Ledger())
DispatchQueue.concurrentPerform(iterations: 2) { _ in
    for _ in 0..<1000 { ledger.withLock { $0.debits += 1; $0.credits += 1 } }
}
let unguarded = ledger.debits // REJECT!
ledger.withLock { print($0.debits, $0.credits) }
