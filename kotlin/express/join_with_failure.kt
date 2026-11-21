// LEVEL: STD

import java.util.concurrent.CompletableFuture
import java.util.concurrent.CompletionException

fun main() {
    val task = CompletableFuture.supplyAsync<Int> { throw IllegalArgumentException("bad input") }
    try {
        task.join()
    } catch (e: CompletionException) {
        println("worker failed: ${e.cause?.message}")
    }
}
