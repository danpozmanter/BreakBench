class Frame {
  val buf = Array(1, 2, 3, 4)
  val secret = 42
}

object Main {
  def main(args: Array[String]): Unit = {
    val f = Frame()
    println(f.buf(args(0).toInt)) // CONTROL! val i = args(0).toInt; println(if f.buf.indices.contains(i) then f.buf(i).toString else "out of range")
  }
}
