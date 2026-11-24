object Main {
  def main(args: Array[String]): Unit = {
    val s = args(0).toInt
    val one = 1L
    println(one << s) // CONTROL! println(BigInt(1) << s)
  }
}
