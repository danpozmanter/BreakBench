// LEVEL: LANGUAGE

data class Point(val x: Int, val y: Int)

fun main() {
    val xs = mutableListOf(3, 1, 2)
    xs.sort()
    val ps = mutableListOf(Point(1, 2)); ps.sort() // REJECT!
    println(xs[0])
}
