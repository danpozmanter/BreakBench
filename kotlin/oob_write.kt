class Frame {
    val buf = IntArray(4)
    var guard = 7
}

fun main(args: Array<String>) {
    val f = Frame()
    val idx = args[0].toInt()
    f.buf[idx] = 99
    println(f.guard)
}
