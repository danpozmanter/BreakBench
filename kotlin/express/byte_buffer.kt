// LEVEL: STD

import java.io.ByteArrayOutputStream

fun main() {
    val buf = ByteArrayOutputStream()
    for (i in 0 until 100_000) buf.write(i)
    println(buf.size())
}
