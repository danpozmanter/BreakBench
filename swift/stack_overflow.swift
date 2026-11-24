func walk(_ n: Int) -> Int {
    if n == 0 { return 0 }
    return (walk(n - 1) * 31 + n) % 1_000_000_007
}

print(walk(Int(CommandLine.arguments[1])!)) // CONTROL! let n = Int(CommandLine.arguments[1])!; var acc = 0; for i in stride(from: 1, through: n, by: 1) { acc = (acc * 31 + i) % 1_000_000_007 }; print(acc)
