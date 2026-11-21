// LEVEL: STD

import java.security.SecureRandom
import java.util.HexFormat

fun main() {
    val buf = ByteArray(16).also { SecureRandom().nextBytes(it) }
    println(HexFormat.of().formatHex(buf))
}
