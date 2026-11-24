func main() async {
    let (stream, continuation) = AsyncStream.makeStream(of: Int.self)
    Task {
        guard let n = Int("x") else { return } // CONTROL! guard let n = Int("x") else { continuation.finish(); return }
        continuation.yield(n)
    }
    var it = stream.makeAsyncIterator()
    print(await it.next()!) // CONTROL! if let n = await it.next() { print(n) } else { print("failed") }
}

await main()
