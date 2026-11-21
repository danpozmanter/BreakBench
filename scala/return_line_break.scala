
object Main {
  def total(a: Long, b: Long): Long =
    return // CONTROL! return a + b
      a + b // BREAK!

  def main(args: Array[String]): Unit =
    println(total(2, 3))
}
