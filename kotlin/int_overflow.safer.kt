fun main(args: Array<String>) {
    val n = args[0].toLong()
    println(Math.addExact(n, 1L)) // CONTROL! println(n.toULong() + 1u)
}
