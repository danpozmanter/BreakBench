import java.util.concurrent.CountDownLatch
import kotlin.concurrent.thread

private val lock = Any()
private val checked = CountDownLatch(2)
private var claimed = false
private var winners = 0

private fun claim() {
    val available: Boolean
    synchronized(lock) { available = !claimed } // BREAK!
    // CONTROL! synchronized(lock) { available = !claimed; if (available) claimed = true }
    checked.countDown()
    checked.await()
    if (available) synchronized(lock) { claimed = true; winners++ }
}

fun main() {
    val a = thread { claim() }
    val b = thread { claim() }
    a.join(); b.join()
    println(winners)
}
