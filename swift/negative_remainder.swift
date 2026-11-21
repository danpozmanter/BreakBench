func isOdd(_ n: Int) -> Bool {
    return n % 2 == 1
}

let n = Int(CommandLine.arguments[1])!
print(isOdd(n) ? "odd" : "even")
