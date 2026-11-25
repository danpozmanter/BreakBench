import Foundation

final class Account: @unchecked Sendable {
    let lock = NSLock()
    var balance = 100
    let gate = DispatchSemaphore(value: 0)

    func charge() {
        gate.wait()
        gate.signal()
        lock.lock()
        balance -= 30
        lock.unlock()
    }
}

let account = Account()
let done = DispatchSemaphore(value: 0)
let attempt = Thread {
    account.charge()
    done.signal()
}
attempt.start()
if done.wait(timeout: .now() + .milliseconds(100)) == .timedOut {
    account.gate.signal()
    account.charge() // BREAK!
    done.wait()
}
print(account.balance)
