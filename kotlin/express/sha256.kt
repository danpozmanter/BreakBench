// LEVEL: STD

import java.security.MessageDigest
import java.util.HexFormat

fun main() {
    println(HexFormat.of().formatHex(MessageDigest.getInstance("SHA-256").digest("abc".toByteArray())))
}
