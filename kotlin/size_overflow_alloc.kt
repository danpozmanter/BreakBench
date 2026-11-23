fun main(args: Array<String>) {
    val count = args[0].toLong()
    val size = count * 8
    val records = ByteArray(size.toInt())
    records[8] = 99
    println("stored")
}
