// LEVEL: STD

import java.security.MessageDigest

object Main {
  def main(args: Array[String]): Unit = {
    val a = Array.fill[Byte](16)(7)
    val b = Array.fill[Byte](16)(7)
    println(if MessageDigest.isEqual(a, b) then "equal" else "different")
  }
}
