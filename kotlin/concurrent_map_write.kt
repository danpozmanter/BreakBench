import kotlin.concurrent.thread

fun main() {
    val map = HashMap<Long, Long>()
    val threads = List(8) { t ->
        thread {
            for (k in 0L until 100_000L) map[t * 100_000L + k] = k
        }
    }
    threads.forEach { it.join() }
    println(map.size)
}
