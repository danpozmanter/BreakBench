object Main {
  def main(args: Array[String]): Unit = {
    val n = args(0).toLong
    val buf = new Array[Byte](n.toInt)
    buf(buf.length - 1) = 1
    println(buf.length)
  }
}
