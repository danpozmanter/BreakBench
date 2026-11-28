fun main(args: Array<String>) {
    val claimed = args[0].toInt()
    val buf = ByteArray(64)
    "SECRET-KEY-0042".toByteArray().copyInto(buf, 2)
    "hi".toByteArray().copyInto(buf, 0)
    val payload = buf.copyOfRange(0, 2)
    // CONTROL! if (claimed > payload.size) { println("invalid"); return }
    val reply = payload.copyOfRange(0, claimed)
    println(String(reply))
}
