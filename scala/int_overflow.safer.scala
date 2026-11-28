object Main {
  def main(args: Array[String]): Unit = {
    val n = args(0).toLong
    println(Math.addExact(n, 1L)) // CONTROL! println(BigInt(n) + 1)
  }
}
