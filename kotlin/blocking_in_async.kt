import kotlin.concurrent.thread

fun main() {
    val start = System.nanoTime()
    val a = thread { Thread.sleep(500) }
    val b = thread { Thread.sleep(500) }
    a.join()
    b.join()
    println(if ((System.nanoTime() - start) / 1_000_000 < 800) "concurrent" else "serial")
}
