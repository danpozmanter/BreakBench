fun main(args: Array<String>) {
    val count = args[0].toLong()
    // CONTROL! if (count > (1L shl 27)) { println("too large"); return }
    val size = count * 8
    val records = ByteArray(size.toInt())
    records[8] = 99
    println("stored")
}
