import kotlinx.coroutines.delay
import kotlinx.coroutines.joinAll
import kotlinx.coroutines.launch
import kotlinx.coroutines.runBlocking

var balance = 100

suspend fun withdraw(amount: Int) {
    if (balance >= amount) {
        delay(10)
        balance -= amount
    }
}

fun main() = runBlocking {
    joinAll(launch { withdraw(80) }, launch { withdraw(80) })
    println(balance)
}
