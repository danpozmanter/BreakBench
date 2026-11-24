fun main(args: Array<String>) {
    val v = args[0].toInt()
    // CONTROL! if (v < 0 || v > 255) { println("out of range"); return }
    val b = v.toUByte()
    println(b)
}
