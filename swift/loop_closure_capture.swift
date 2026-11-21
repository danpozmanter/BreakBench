var fs: [() -> Int] = []
for i in 0..<3 {
    fs.append { i }
}
print(fs.map { String($0()) }.joined(separator: ","))
