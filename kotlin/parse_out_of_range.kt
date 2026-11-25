fun main(args: Array<String>) {
    val n = args[0].toLong() // CONTROL! val n = args[0].toLongOrNull()
    println(n) // CONTROL! println(n ?: "invalid")
}
