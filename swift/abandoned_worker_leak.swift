let rounds = Int(CommandLine.arguments[1])!
for i in 0..<rounds {
    let first = await withTaskGroup(of: [Int].self) { group in
        group.addTask { [Int](repeating: i, count: 8192) }
        group.addTask { [Int](repeating: i + 1, count: 8192) }
        let answer = await group.next()!
        group.cancelAll()
        return answer
    }
    _ = first
}
print("done")
