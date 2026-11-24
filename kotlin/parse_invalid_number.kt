fun main(args: Array<String>) {
    val n = args[0].toInt() // CONTROL! val n = args[0].toIntOrNull()
    println(n + 1) // CONTROL! println(if (n == null) "invalid" else (n + 1).toString())
}
