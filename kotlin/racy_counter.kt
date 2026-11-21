import kotlin.concurrent.thread

fun main() {
    var count = 0L
    val a = thread { repeat(1_000_000) { count++ } }
    val b = thread { repeat(1_000_000) { count++ } }
    a.join()
    b.join()
    println(count)
}
