fun main(args: Array<String>) {
    val xs = listOf(1, 2, 3)
    val i = args[0].toLong()
    if (i < xs.size) println("less") else println("not less")
}
