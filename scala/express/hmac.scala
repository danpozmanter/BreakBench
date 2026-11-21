// LEVEL: STD

import java.util.HexFormat
import javax.crypto.Mac
import javax.crypto.spec.SecretKeySpec

object Main {
  def main(args: Array[String]): Unit =
    val mac = Mac.getInstance("HmacSHA256")
    mac.init(SecretKeySpec("key".getBytes, "HmacSHA256"))
    println(HexFormat.of().formatHex(mac.doFinal("The quick brown fox jumps over the lazy dog".getBytes)))
}
