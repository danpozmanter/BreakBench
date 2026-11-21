import java.util.concurrent.locks.ReentrantLock
import kotlin.concurrent.withLock

val lock = ReentrantLock()
var balance = 0

fun deposit(amount: Int) {
    lock.withLock { balance += amount }
}

fun main() {
    lock.withLock { deposit(10) }
    println("done")
}
