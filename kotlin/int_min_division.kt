fun main(args: Array<String>) {
    val a = args[0].toLong()
    val b = args[1].toLong()
    println(a / b) // CONTROL! println(java.math.BigInteger.valueOf(a) / java.math.BigInteger.valueOf(b))
}
