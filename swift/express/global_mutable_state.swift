// LEVEL: LANGUAGE

import Synchronization

let hits = Mutex(0)
var plain = 0 // REJECT!

func hit() {
    hits.withLock { $0 += 1 }
}

func bad() { plain += 1 } // REJECT!

hit()
hit()
print(hits.withLock { $0 })
