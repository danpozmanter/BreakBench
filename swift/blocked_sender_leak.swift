func firstAnswer() async -> (Int, [Task<Void, Never>]) {
    let (answers, continuation) = AsyncStream.makeStream(of: Int.self)
    let workers = (0..<2).map { _ in Task { _ = continuation.yield(42) } }
    var it = answers.makeAsyncIterator()
    let answer = await it.next() ?? 0
    return (answer, workers)
}

func main() async {
    let (answer, workers) = await firstAnswer()
    print(answer)
    for worker in workers { await worker.value }
    print("done")
}

await main()
