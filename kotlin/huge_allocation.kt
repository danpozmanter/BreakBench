fun main(args: Array<String>) {
    val n = args[0].toLong()
    // CONTROL! if (n > (1L shl 30)) { println("too large"); return }
    val buf = ByteArray(n.toInt())
    buf[buf.size - 1] = 1
    println(buf.size)
}
