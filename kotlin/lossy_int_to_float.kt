fun show(f: Double) = println(f)

fun main() {
    val n = 7L
    show(n.toDouble())
    show(n) // BREAK!
}
