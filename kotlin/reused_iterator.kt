fun main() {
    val xs = listOf(1, 2, 3, 4, 5, 6)
    val evens = xs.asSequence().filter { it % 2 == 0 }
    val total = evens.sum()
    val count = evens.count()
    println("$total $count")
}
