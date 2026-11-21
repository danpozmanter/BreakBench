final class Node {
    var next: Node?
    var payload = [UInt8](repeating: 0, count: 2048)
}

final class Obj {
    var payload = [UInt8](repeating: 0, count: 2048)
    var callback: (() -> Int)?
}

let n = Int(CommandLine.arguments[1])!
var total = 0
for _ in 0..<n {
    let a = Node()
    let b = Node()
    a.next = b
    b.next = a
    let o = Obj()
    o.callback = { o.payload.count }
    total += o.callback!()
}
print(total < 0 ? "unreachable" : "done")
