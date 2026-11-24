// Scala's default List is immutable: removing items builds a new list.
object Main {
  def main(args: Array[String]): Unit = {
    val xs = List(1, 2, 2, 3)
    val kept = xs.filter(_ != 2)
    println(kept.mkString(","))
  }
}
