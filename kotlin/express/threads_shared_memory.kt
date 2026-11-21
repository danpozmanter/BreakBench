// LEVEL: STD

import kotlin.concurrent.thread

fun main() {
    val slots = IntArray(10)
    val a = thread { for (i in 0 until 5) slots[i] = i }
    val b = thread { for (i in 5 until 10) slots[i] = i }
    a.join()
    b.join()
    println(slots.sum())
}
