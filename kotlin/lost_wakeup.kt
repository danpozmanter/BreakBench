import java.util.concurrent.locks.ReentrantLock
import kotlin.concurrent.thread
import kotlin.concurrent.withLock

fun main() {
    val lock = ReentrantLock()
    val woken = lock.newCondition()
    lock.withLock { woken.signal() }
    val worker = thread {
        lock.withLock { woken.await() }
        println("done")
    }
    worker.join()
}
