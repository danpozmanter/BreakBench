fun parseOrder(line: String): Int {
    val parts = line.split(",")
    return parts[2].toInt() // BREAK!
    // CONTROL! return parts[1].toInt()
}

fun main() {
    try {
        println(parseOrder("widget,5"))
    } catch (e: Exception) {
        println("invalid order")
    }
}
