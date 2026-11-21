import scala.collection.mutable.ArrayBuffer

object Main {
  def main(args: Array[String]): Unit = {
    val n = args(0).toInt
    val heads = ArrayBuffer[Array[Byte]]()
    val prefixes = ArrayBuffer[String]()
    for i <- 0 until n do
      val buf = Array.fill[Byte](32768)(i.toByte)
      heads += buf.slice(0, 16)
      val big = ('a' + i % 26).toChar.toString * 32768
      prefixes += big.substring(0, 16)
    println(heads.size)
  }
}
