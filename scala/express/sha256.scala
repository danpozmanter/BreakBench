// LEVEL: STD

import java.security.MessageDigest
import java.util.HexFormat

object Main {
  def main(args: Array[String]): Unit =
    println(HexFormat.of().formatHex(MessageDigest.getInstance("SHA-256").digest("abc".getBytes)))
}
