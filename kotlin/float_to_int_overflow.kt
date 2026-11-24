fun main(args: Array<String>) {
    val x = args[0].toDouble()
    val v = x.toLong() // CONTROL! val v = java.math.BigDecimal.valueOf(x).toBigInteger()
    println(v)
}
