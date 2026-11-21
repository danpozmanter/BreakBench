fun main() {
    var session: ByteArray? = ByteArray(64)
    "SECRET-TOKEN".toByteArray().copyInto(session!!, 32)
    session = null
    val reply = ByteArray(64)
    println(reply.copyOfRange(32, 44).joinToString("") { "%02x".format(it) })
}
