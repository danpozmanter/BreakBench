import Dispatch
import Foundation

let a = NSLock()
let b = NSLock()
let ready = DispatchGroup()
ready.enter()
ready.enter()

func transfer(_ first: NSLock, _ second: NSLock) {
    first.lock()
    defer { first.unlock() }
    ready.leave()
    ready.wait()
    second.lock()
    defer { second.unlock() }
}

let done = DispatchGroup()
DispatchQueue.global().async(group: done) { transfer(a, b) }
DispatchQueue.global().async(group: done) { transfer(b, a) }
done.wait()
print("finished")
