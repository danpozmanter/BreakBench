fun main(args: Array<String>) {
    val x = args[0].toDouble()
    val y = args[1].toDouble()
    val a = x + y
    println(if (a == 0.3) "equal" else "not equal")
}
