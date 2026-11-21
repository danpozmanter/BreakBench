// LEVEL: STD

import java.util.concurrent.CompletableFuture
import java.util.concurrent.TimeUnit
import java.util.concurrent.TimeoutException

fun main() {
    val task = CompletableFuture.supplyAsync { Thread.sleep(5000); 1 }
    try {
        task.get(100, TimeUnit.MILLISECONDS)
        println("done")
    } catch (e: TimeoutException) {
        println("timed out")
    }
}
