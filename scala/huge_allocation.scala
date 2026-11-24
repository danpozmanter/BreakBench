object Main {
  def main(args: Array[String]): Unit = {
    val n = args(0).toLong
    // CONTROL! if n > (1L << 30) then { println("too large"); return }
    val buf = new Array[Byte](n.toInt)
    buf(buf.length - 1) = 1
    println(buf.length)
  }
}
