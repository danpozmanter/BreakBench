// LEVEL: LANGUAGE

import scala.compiletime.error

object Main {
  inline val ByteLimit = 255

  inline def check(inline n: Int): Unit = inline if n > ByteLimit then error("does not fit in a byte")

  def main(args: Array[String]): Unit = {
    check(100)
    check(300) // REJECT!
    println(100)
  }
}
