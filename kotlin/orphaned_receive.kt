import java.util.concurrent.LinkedBlockingQueue
import kotlin.concurrent.thread

fun main() {
    val answer = LinkedBlockingQueue<Long>() // CONTROL! val answer = LinkedBlockingQueue<Result<Long>>()
    thread { answer.add("x".toLong()) } // CONTROL! thread { answer.add(runCatching { "x".toLong() }) }
    println(answer.take()) // CONTROL! println(answer.take().getOrNull() ?: "failed")
}
