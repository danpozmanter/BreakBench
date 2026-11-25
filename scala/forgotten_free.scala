class Rec {
  val data: Array[Byte] = Array.fill(4096)(1.toByte)
}

object Main {
  def main(args: Array[String]): Unit = {
    val n = args(0).toLong
    var seen = 0L
    var i = 0L
    while i < n do
      val rec = Rec()
      seen += rec.data(0)
      i += 1
    println(if seen == n then "done" else "lost")
  }
}
