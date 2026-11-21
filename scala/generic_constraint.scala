case class Point(x: Int, y: Int)

object Main {
  def main(args: Array[String]): Unit = {
    val xs = List(3, 1, 2).sorted
    println(List(Point(1, 2)).sorted) // BREAK!
    println(xs.head)
  }
}
