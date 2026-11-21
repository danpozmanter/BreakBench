// LEVEL: STD

fun main(args: Array<String>) {
    val n = args[0].toLong()
    try {
        Math.addExact(n, 1L)
        println("ok")
    } catch (e: ArithmeticException) {
        println("overflow")
    }
}
