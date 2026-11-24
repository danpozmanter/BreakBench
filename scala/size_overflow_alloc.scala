object Main {
  def main(args: Array[String]): Unit = {
    val count = args(0).toLong
    // CONTROL! if count > (1L << 27) then { println("too large"); return }
    val size = count * 8
    val records = new Array[Byte](size.toInt)
    records(8) = 99
    println("stored")
  }
}
