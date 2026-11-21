// LEVEL: STD

let (stream, continuation) = AsyncStream.makeStream(of: Int.self)
Task {
    for v in 1...3 { continuation.yield(v) }
    continuation.finish()
}
var got: [String] = []
for await v in stream { got.append(String(v)) }
print(got.joined(separator: " "))
