import Foundation

let a = NSLock()
let b = NSLock()

func transfer(_ first: NSLock, _ second: NSLock) {
    first.lock()
    defer { first.unlock() }
    Thread.sleep(forTimeInterval: 0.1)
    second.lock()
    defer { second.unlock() }
}

let group = DispatchGroup()
DispatchQueue.global().async(group: group) { transfer(a, b) }
DispatchQueue.global().async(group: group) { transfer(b, a) }
group.wait()
print("finished")
