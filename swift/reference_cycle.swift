final class Node {
    var data = [UInt8](repeating: 1, count: 4096)
    var other: Node?
}

let n = Int(CommandLine.arguments[1])!
for _ in 0..<n {
    let parent = Node()
    let child = Node()
    parent.other = child
    child.other = parent
}
print("done")
