import java.util.concurrent.locks.ReentrantLock
import java.util.concurrent.CountDownLatch
import kotlin.concurrent.thread
import kotlin.concurrent.withLock

fun transfer(first: ReentrantLock, second: ReentrantLock, ready: CountDownLatch) {
    first.withLock {
        ready.countDown()
        ready.await()
        second.withLock { }
    }
}

fun main() {
    val a = ReentrantLock()
    val b = ReentrantLock()
    val ready = CountDownLatch(2)
    val t1 = thread { transfer(a, b, ready) }
    val t2 = thread { transfer(b, a, ready) }
    t1.join()
    t2.join()
    println("finished")
}
