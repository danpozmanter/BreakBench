// LEVEL: STD

object Main {
  def main(args: Array[String]): Unit = {
    val n = args(0).toLong
    try {
      val parts = Array.fill((n / Int.MaxValue).toInt + 1)(new Array[Byte](Int.MaxValue - 8))
      println(s"allocated ${parts.length}")
    } catch case _: OutOfMemoryError => println("allocation failed")
  }
}
