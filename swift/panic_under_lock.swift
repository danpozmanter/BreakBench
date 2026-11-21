import Foundation
import Synchronization

struct Ledger {
    var debits = 0
    var credits = 0
}

struct CrashMidUpdate: Error {}

let ledger = Mutex(Ledger())
let worker = Task.detached {
    try ledger.withLock { l in
        l.debits += 50
        if l.debits > 0 { throw CrashMidUpdate() }
        l.credits += 50
    }
}
do {
    try await worker.value
} catch {
    FileHandle.standardError.write(Data("worker failed\n".utf8))
}
print(ledger.withLock { $0.debits == $0.credits } ? "balanced" : "unbalanced")
