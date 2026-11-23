import Foundation

let woken = NSCondition()
woken.lock()
woken.signal()
woken.unlock()
let finished = DispatchSemaphore(value: 0)
let worker = Thread {
    woken.lock()
    woken.wait()
    woken.unlock()
    print("done")
    finished.signal()
}
worker.start()
finished.wait()
