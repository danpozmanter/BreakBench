// LEVEL: STD

import java.security.MessageDigest

fun main() {
    val a = ByteArray(16) { 7 }
    val b = ByteArray(16) { 7 }
    println(if (MessageDigest.isEqual(a, b)) "equal" else "different")
}
