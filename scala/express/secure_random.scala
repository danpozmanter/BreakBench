// LEVEL: STD

import java.security.SecureRandom
import java.util.HexFormat

object Main {
  def main(args: Array[String]): Unit = {
    val buf = new Array[Byte](16)
    SecureRandom().nextBytes(buf)
    println(HexFormat.of().formatHex(buf))
  }
}
