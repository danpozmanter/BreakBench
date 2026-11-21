final class Node {
    let value: Int
    let next: Node?
    init(_ value: Int, _ next: Node?) {
        self.value = value
        self.next = next
    }
}

func buildAndRelease(_ n: Int) -> Int {
    var head: Node? = nil
    for i in 0..<n {
        head = Node(i, head)
    }
    return head?.value ?? 0
}

_ = buildAndRelease(Int(CommandLine.arguments[1])!)
print("done")
