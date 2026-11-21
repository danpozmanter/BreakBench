enum class Color { RED, GREEN, BLUE }

fun name(c: Color): String = when (c) {
    Color.RED -> "red"
    Color.GREEN -> "green"
    // CONTROL! Color.BLUE -> "blue"
}

fun main(args: Array<String>) {
    println(name(Color.entries[args[0].toInt()]))
}
