func walk(_ n: Int) -> Int {
    if n == 0 { return 0 }
    return (walk(n - 1) * 31 + n) % 1_000_000_007
}

print(walk(Int(CommandLine.arguments[1])!))
