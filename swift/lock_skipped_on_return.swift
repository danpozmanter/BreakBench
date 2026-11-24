import Foundation

final class Account: @unchecked Sendable {
    let lock = NSLock()
    var balance = 100

    func withdraw(_ amount: Int) {
        lock.lock()
        if amount > balance {
            return // CONTROL! lock.unlock(); return
        }
        balance -= amount
        lock.unlock()
    }
}

let account = Account()
account.withdraw(500)
let finished = DispatchSemaphore(value: 0)
let worker = Thread {
    account.withdraw(30)
    finished.signal()
}
worker.start()
finished.wait()
print(account.balance)
