// LEVEL: LANGUAGE

fun count(xs: List<Int>): Int {
    xs[0] = 9 // REJECT!
    return xs.size
}

fun main() {
    println(count(listOf(1, 2, 3)))
}
