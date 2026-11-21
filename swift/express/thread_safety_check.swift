// LEVEL: LANGUAGE

import Synchronization

let list = Mutex<[Int]>([])
var unguarded: [Int] = [] // REJECT!
let a = Task.detached { list.withLock { $0.append(1) } }
let b = Task.detached { list.withLock { $0.append(2) } }
let c = Task.detached { unguarded.append(3) } // REJECT!
await a.value
await b.value
print(list.withLock { $0.count })
