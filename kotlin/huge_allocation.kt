fun main(args: Array<String>) {
    val n = args[0].toLong()
    val buf = ByteArray(n.toInt())
    buf[buf.size - 1] = 1
    println(buf.size)
}
