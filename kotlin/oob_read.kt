class Frame {
    val buf = intArrayOf(1, 2, 3, 4)
    val secret = 42
}

fun main(args: Array<String>) {
    val f = Frame()
    val idx = args[0].toInt()
    println(f.buf[idx]) // CONTROL! println(if (idx in f.buf.indices) f.buf[idx].toString() else "out of range")
}
