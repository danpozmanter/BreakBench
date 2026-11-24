object Main {
  def main(args: Array[String]): Unit = {
    val n = args(0).toLong
    println(n + 1) // CONTROL! println(BigInt(n) + 1)
  }
}
