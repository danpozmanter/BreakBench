fun main() {
    val xs = mutableListOf(5.0, Double.NaN, 3.0, 1.0, Double.NaN, 4.0, 2.0)
    xs.sort()
    val finite = xs.filter { !it.isNaN() }
    println(if (finite.zipWithNext().all { (a, b) -> a <= b }) "ordered" else "unordered")
}
