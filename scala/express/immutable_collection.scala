// LEVEL: STD

object Main {
  def main(args: Array[String]): Unit = {
    val xs = List(1, 2, 3)
    xs(0) = 9 // REJECT!
    println(xs.size)
  }
}
