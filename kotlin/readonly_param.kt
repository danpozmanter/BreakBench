fun count(xs: List<Int>): Int {
    xs[0] = 9 // BREAK!
    return xs.size
}

fun main() {
    println(count(listOf(1, 2, 3)))
}
