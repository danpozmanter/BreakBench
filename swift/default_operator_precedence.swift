func cachedCount(_ name: String) -> Int? {
    name == "ada" ? 4 : nil
}

let cached = cachedCount(CommandLine.arguments[1])
let count = cached ?? 0 + 1 // CONTROL! let count = (cached ?? 0) + 1
print(count)
