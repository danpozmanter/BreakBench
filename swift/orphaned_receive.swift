func main() async {
    let (stream, continuation) = AsyncStream.makeStream(of: Int.self)
    Task {
        // Int(_:) answers an Optional, so the worker checks it before sending.
        guard let n = Int("x") else { return } // CONTROL! guard let n = Int("x") else { continuation.finish(); return }
        continuation.yield(n)
    }
    var it = stream.makeAsyncIterator()
    // next() answers an Optional, so main checks it.
    if let n = await it.next() { print(n) } else { print("failed") }
}

await main()
