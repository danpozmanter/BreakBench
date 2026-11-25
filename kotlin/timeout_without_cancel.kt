import kotlinx.coroutines.CompletableDeferred
import kotlinx.coroutines.runBlocking
import kotlinx.coroutines.withTimeoutOrNull

var balance = 100

suspend fun charge(gate: CompletableDeferred<Unit>) {
    gate.await()
    balance -= 30
}

fun main() = runBlocking {
    val gate = CompletableDeferred<Unit>()
    if (withTimeoutOrNull(100) { charge(gate) } == null) {
        gate.complete(Unit)
        charge(gate) // BREAK!
    }
    println(balance)
}
