class Counter {
    var count = 0

    fun increment() {
        count++
    }
}

fun runTwice(f: () -> Unit) {
    f()
    f()
}

fun main() {
    val counter = Counter()
    runTwice(counter::increment)
    println(counter.count)
}
