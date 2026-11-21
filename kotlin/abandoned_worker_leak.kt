import java.util.concurrent.Callable
import java.util.concurrent.Executors

fun main(args: Array<String>) {
    val rounds = args[0].toInt()
    val pool = Executors.newCachedThreadPool()
    for (i in 0 until rounds) {
        val first = pool.invokeAny(listOf(
            Callable { LongArray(8192) { i.toLong() } },
            Callable { LongArray(8192) { i + 1L } },
        ))
        check(first.size == 8192)
    }
    pool.shutdown()
    println("done")
}
