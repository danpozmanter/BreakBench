fun main(args: Array<String>) {
    val n = args[0].toInt()
    val x: Int
    if (n > 5) x = 10
    println(x) // BREAK!
    println(n)
}
