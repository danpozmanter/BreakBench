// Kotlin's default list is read-only: removing items builds a new list.
fun main() {
    val xs = listOf(1, 2, 2, 3)
    val kept = xs.filter { it != 2 }
    println(kept.joinToString(","))
}
