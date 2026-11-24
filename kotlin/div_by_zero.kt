fun main(args: Array<String>) {
    val d = args[0].toInt()
    println(100 / d) // CONTROL! println(if (d == 0) "cannot divide" else (100 / d).toString())
}
