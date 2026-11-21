func pair(_ a: Int, _ b: Int) -> String { "\(a) \(b)" }

func run() {
    var n = 0
    func next() -> Int {
        n += 1
        return n
    }
    print(pair(next(), next()))
}

run()
