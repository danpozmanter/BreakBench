func main() async {
    let (stream, continuation) = AsyncStream.makeStream(of: Int.self)
    Task {
        guard let n = Int("x") else { return }
        continuation.yield(n)
    }
    var it = stream.makeAsyncIterator()
    print(await it.next()!)
}

await main()
