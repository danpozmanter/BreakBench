// LEVEL: STD

import java.util.concurrent.LinkedBlockingQueue
import kotlin.concurrent.thread

fun main() {
    val queue = LinkedBlockingQueue<Int>()
    val t = thread { for (v in 1..3) queue.add(v) }
    val got = List(3) { queue.take() }
    t.join()
    println(got.joinToString(" "))
}
