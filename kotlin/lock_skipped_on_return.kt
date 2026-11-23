import java.util.concurrent.locks.ReentrantLock
import kotlin.concurrent.thread

val lock = ReentrantLock()
var balance = 100

fun withdraw(amount: Int) {
    lock.lock()
    if (amount > balance) {
        return
    }
    balance -= amount
    lock.unlock()
}

fun main() {
    withdraw(500)
    val worker = thread { withdraw(30) }
    worker.join()
    println(balance)
}
