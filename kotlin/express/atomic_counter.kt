// LEVEL: STD

import java.util.concurrent.atomic.AtomicLong
import kotlin.concurrent.thread

fun main() {
    val counter = AtomicLong()
    val workers = List(2) { thread { repeat(100_000) { counter.incrementAndGet() } } }
    workers.forEach { it.join() }
    println(counter.get())
}
