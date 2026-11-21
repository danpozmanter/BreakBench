import Dispatch
import Synchronization

func main() {
    var map: [Int: Int] = [:] // CONTROL! let map = Mutex<[Int: Int]>([:])
    DispatchQueue.concurrentPerform(iterations: 8) { t in
        for k in 0..<100_000 {
            map[t * 100_000 + k] = k // CONTROL! map.withLock { $0[t * 100_000 + k] = k }
        }
    }
    print(map.count) // CONTROL! print(map.withLock { $0.count })
}

main()
