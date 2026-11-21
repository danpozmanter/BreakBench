data class P(val x: Int, val y: Int)

fun main() {
    val a = P(1, 2)
    val b = P(1, 2)
    println(if (a == b) "equal" else "different")
}
