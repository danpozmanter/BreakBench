import java.util.concurrent.locks.ReentrantLock
import kotlin.concurrent.thread
import kotlin.concurrent.withLock

fun transfer(first: ReentrantLock, second: ReentrantLock) {
    first.withLock {
        Thread.sleep(100)
        second.withLock { }
    }
}

fun main() {
    val a = ReentrantLock()
    val b = ReentrantLock()
    val t1 = thread { transfer(a, b) }
    val t2 = thread { transfer(b, a) }
    t1.join()
    t2.join()
    println("finished")
}
