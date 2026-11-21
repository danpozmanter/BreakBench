fun main(args: Array<String>) {
    val n = args[0].toInt()
    val name = when (n) {
        1 -> "one"
        2 -> "two"
        else -> "other"
    }
    println(name)
}
