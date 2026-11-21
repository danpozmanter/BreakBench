// LEVEL: STD

import java.util.concurrent.CompletableFuture

fun main() {
    val task = CompletableFuture.supplyAsync { Thread.sleep(50); 7 }
    println("started")
    println(task.join())
}
