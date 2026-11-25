final class Counter {
    var count = 0

    func increment() {
        count += 1
    }
}

func runTwice(_ f: () -> Void) {
    f()
    f()
}

let counter = Counter()
runTwice(counter.increment)
print(counter.count)
