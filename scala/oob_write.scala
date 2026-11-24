class Frame {
  val buf = new Array[Int](4)
  var guard = 7
}

object Main {
  def main(args: Array[String]): Unit = {
    val f = Frame()
    f.buf(args(0).toInt) = 99 // CONTROL! val i = args(0).toInt; if i >= 0 && i < f.buf.length then f.buf(i) = 99
    println(f.guard)
  }
}
