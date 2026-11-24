import Dispatch
import Synchronization

func main() {
    var counter = 0 // CONTROL! let counter = Mutex<Int>(0)
    DispatchQueue.concurrentPerform(iterations: 8) { _ in
        for _ in 0..<1_000_000 {
            counter += 1 // CONTROL! counter.withLock { $0 += 1 }
        }
    }
    print(counter) // CONTROL! print(counter.withLock { $0 })
}

main()
