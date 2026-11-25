object Main {
  def main(args: Array[String]): Unit = {
    val a = args(0).toLong
    val b = args(1).toLong
    println(a / b) // CONTROL! println(BigInt(a) / BigInt(b))
  }
}
