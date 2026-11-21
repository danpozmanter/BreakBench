// LEVEL: LANGUAGE

import Synchronization

let count = Mutex(0)

func run() async {
    await Task.detached { count.withLock { $0 += 1 } }.value
    print(count.withLock { $0 })
    var plain = 0; let t = Task.detached { plain += 1 }; plain += 1; await t.value // REJECT!
}

await run()
