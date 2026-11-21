class Frame {
  val buf = Array(1, 2, 3, 4)
  val secret = 42
}

object Main {
  def main(args: Array[String]): Unit = {
    val f = Frame()
    println(f.buf(args(0).toInt))
  }
}
