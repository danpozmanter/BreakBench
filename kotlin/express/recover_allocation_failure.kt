// LEVEL: STD

fun main(args: Array<String>) {
    val n = args[0].toLong()
    try {
        val parts = Array((n / Int.MAX_VALUE).toInt() + 1) { ByteArray(Int.MAX_VALUE - 8) }
        println("allocated ${parts.size}")
    } catch (e: OutOfMemoryError) {
        println("allocation failed")
    }
}
