fun main() {
    val xs = mutableListOf(1, 2, 2, 3)
    for (x in xs) {
        if (x == 2) xs.remove(x)
    }
    println(xs.joinToString(","))
}
