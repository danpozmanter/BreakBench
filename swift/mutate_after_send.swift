func main() async {
    let (lists, listOut) = AsyncStream.makeStream(of: [Int].self)
    let (signals, signalOut) = AsyncStream.makeStream(of: Bool.self)
    let worker = Task {
        var listIt = lists.makeAsyncIterator()
        var signalIt = signals.makeAsyncIterator()
        let received = await listIt.next()!
        _ = await signalIt.next()
        print(received[0])
    }
    var list = [1, 2, 3]
    listOut.yield(list)
    list[0] = 99
    signalOut.yield(true)
    await worker.value
    _ = list
}

await main()
