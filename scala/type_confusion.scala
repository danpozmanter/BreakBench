object Main {
  def add(a: Long, b: Long): Long = a + b

  def main(args: Array[String]): Unit = {
    val raw = args(0)
    println(add(raw, 3)) // BREAK!
    println(raw + add(1, 2))
  }
}
