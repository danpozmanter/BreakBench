fun main(args: Array<String>) {
    val s = args[0].toInt()
    val one = 1L
    println(one shl s) // CONTROL! println(java.math.BigInteger.ONE.shiftLeft(s))
}
