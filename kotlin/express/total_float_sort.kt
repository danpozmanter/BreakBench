// LEVEL: STD

fun main() {
    val xs = listOf(3.0, Double.NaN, 1.0, 2.0).sorted()
    println(xs.joinToString(" ") { if (it.isNaN()) "NaN" else it.toInt().toString() })
}
