import Foundation

func main() {
    let lock = NSLock()
    var balance = 0

    func deposit(_ amount: Int) {
        lock.lock()
        defer { lock.unlock() }
        balance += amount
    }

    lock.lock()
    deposit(10)
    lock.unlock()
    print("done")
}

main()
