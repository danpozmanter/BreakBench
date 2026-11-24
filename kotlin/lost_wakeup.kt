import java.util.concurrent.locks.ReentrantLock
import kotlin.concurrent.thread
import kotlin.concurrent.withLock

fun main() {
    val lock = ReentrantLock()
    val woken = lock.newCondition()
    // CONTROL! var ready = false
    lock.withLock { woken.signal() } // CONTROL! lock.withLock { ready = true; woken.signal() }
    val worker = thread {
        lock.withLock { woken.await() } // CONTROL! lock.withLock { while (!ready) woken.await() }
        println("done")
    }
    worker.join()
}
