// LEVEL: LANGUAGE

enum class Color { RED, GREEN, BLUE }

fun name(c: Color): String = when (c) {
    Color.RED -> "red"
    Color.GREEN -> "green"
    Color.BLUE -> "blue"
}

fun main() {
    val c = Color.GREEN
    println(name(7)) // REJECT!
    println(name(c))
}
