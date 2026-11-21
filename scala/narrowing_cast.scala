object Main {
  def main(args: Array[String]): Unit = {
    val v = args(0).toInt
    val b = v.toByte
    println(b & 0xff)
  }
}
