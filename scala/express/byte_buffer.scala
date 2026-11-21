// LEVEL: STD

import scala.collection.mutable.ArrayBuffer

object Main {
  def main(args: Array[String]): Unit = {
    val buf = ArrayBuffer[Byte]()
    for i <- 0 until 100000 do buf += i.toByte
    println(buf.size)
  }
}
