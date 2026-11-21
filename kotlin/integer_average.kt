fun main() {
    val values = listOf(3, 4)
    val sum = values.sum()
    val count = values.size
    val avg: Double = sum / count // BREAK!
    // CONTROL! val avg: Double = sum.toDouble() / count
    println("%.1f".format(avg))
}
