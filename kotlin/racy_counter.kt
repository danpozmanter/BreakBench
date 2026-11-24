import kotlin.concurrent.thread

fun main() {
    var counter = 0L
    val threads = List(8) {
        thread {
            repeat(1_000_000) { counter++ }
        }
    }
    threads.forEach { it.join() }
    println(counter)
}
