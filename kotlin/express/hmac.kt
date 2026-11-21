// LEVEL: STD

import java.util.HexFormat
import javax.crypto.Mac
import javax.crypto.spec.SecretKeySpec

fun main() {
    val mac = Mac.getInstance("HmacSHA256")
    mac.init(SecretKeySpec("key".toByteArray(), "HmacSHA256"))
    println(HexFormat.of().formatHex(mac.doFinal("The quick brown fox jumps over the lazy dog".toByteArray())))
}
