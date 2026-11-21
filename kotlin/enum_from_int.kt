enum class Color { RED, GREEN, BLUE }

fun main(args: Array<String>) {
    println("before")
    println(Color.entries[args[0].toInt()])
}
