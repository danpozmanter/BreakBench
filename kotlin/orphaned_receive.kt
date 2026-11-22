import java.util.concurrent.LinkedBlockingQueue
import kotlin.concurrent.thread

fun main() {
    val answer = LinkedBlockingQueue<Long>()
    thread { answer.add("x".toLong()) }
    println(answer.take())
}
