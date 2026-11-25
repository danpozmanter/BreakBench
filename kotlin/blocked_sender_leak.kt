import java.util.concurrent.LinkedBlockingQueue
import kotlin.concurrent.thread

fun firstAnswer(workers: MutableList<Thread>): Int {
    val answers = LinkedBlockingQueue<Int>()
    repeat(2) { workers += thread { answers.add(42) } }
    return answers.take()
}

fun main() {
    val workers = mutableListOf<Thread>()
    println(firstAnswer(workers))
    workers.forEach { it.join() }
    println("done")
}
