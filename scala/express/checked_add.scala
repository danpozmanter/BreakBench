// LEVEL: STD

object Main {
  def main(args: Array[String]): Unit = {
    val n = args(0).toLong
    try { Math.addExact(n, 1L); println("ok") }
    catch case _: ArithmeticException => println("overflow")
  }
}
