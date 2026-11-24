object Main {
  def main(args: Array[String]): Unit = {
    val v = args(0).toInt
    // CONTROL! if v < 0 || v > 255 then { println("out of range"); return }
    val b = v.toByte
    println(b & 0xff)
  }
}
