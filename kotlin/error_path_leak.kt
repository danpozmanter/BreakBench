fun process(request: String, id: Int) {
    val buf = ByteArray(4096)
    val text = "$request#$id".toByteArray()
    text.copyInto(buf)
    if (buf[0] != '{'.code.toByte()) throw IllegalArgumentException("invalid request")
}

fun main(args: Array<String>) {
    val n = args[0].toInt()
    var failures = 0
    for (i in 0 until n) {
        try {
            process("not json", i)
        } catch (e: IllegalArgumentException) {
            failures++
        }
    }
    println(if (failures == n) "done" else "unexpected")
}
