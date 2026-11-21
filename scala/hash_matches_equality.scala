class Point(val x: Int, val y: Int, val label: String) {
  override def equals(o: Any): Boolean = o match {
    case p: Point => p.x == x && p.y == y
    case _ => false
  }
}

object Main {
  def main(args: Array[String]): Unit =
    println(scala.collection.mutable.HashSet(Point(1, 2, "a"), Point(1, 2, "b")).size)
}
