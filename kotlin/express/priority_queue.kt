// LEVEL: STD

import java.util.PriorityQueue

fun main() {
    val q = PriorityQueue(listOf(3, 1, 2))
    println("${q.poll()} ${q.poll()} ${q.poll()}")
}
