import java.util.concurrent.locks.ReentrantLock
import kotlin.concurrent.thread
import kotlin.concurrent.withLock

val lock = ReentrantLock()
var debits = 0
var credits = 0

fun post() {
    lock.withLock {
        debits += 50
        if (debits > 0) error("crash mid-update") // CONTROL! if (debits > 0) { debits -= 50; error("crash mid-update") }
        credits += 50
    }
}

fun main() {
    val worker = thread { post() }
    worker.join()
    lock.withLock { println(if (debits == credits) "balanced" else "unbalanced") }
}
