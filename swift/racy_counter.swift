import Synchronization

let safe = Mutex(0)

func run() async {
    var count = 0 // BREAK!
    await withTaskGroup(of: Void.self) { group in
        for _ in 0..<2 {
            group.addTask { for _ in 0..<1_000_000 { count += 1 } } // CONTROL! group.addTask { for _ in 0..<1_000_000 { safe.withLock { $0 += 1 } } }
        }
    }
    print(count) // CONTROL! print(safe.withLock { $0 })
}

await run()
