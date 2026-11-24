import Foundation

let woken = NSCondition()
// CONTROL! nonisolated(unsafe) var ready = false
woken.lock()
woken.signal() // CONTROL! ready = true; woken.signal()
woken.unlock()
let finished = DispatchSemaphore(value: 0)
let worker = Thread {
    woken.lock()
    woken.wait() // CONTROL! while !ready { woken.wait() }
    woken.unlock()
    print("done")
    finished.signal()
}
worker.start()
finished.wait()
