import java.util.concurrent.atomic.AtomicInteger
import kotlin.concurrent.thread

fun main() {
    val saved = AtomicInteger()
    val task = thread { // CONTROL! thread {
        Thread.sleep(50)
        saved.incrementAndGet()
    } // CONTROL! }.join()
    println(saved.get())
}
