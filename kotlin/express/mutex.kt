// LEVEL: STD

import java.util.concurrent.locks.ReentrantLock
import kotlin.concurrent.thread
import kotlin.concurrent.withLock

fun main() {
    val lock = ReentrantLock()
    var counter = 0L
    val workers = List(2) { thread { repeat(100_000) { lock.withLock { counter++ } } } }
    workers.forEach { it.join() }
    println(counter)
}
