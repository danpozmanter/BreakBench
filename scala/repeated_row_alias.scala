object Main {
  def main(args: Array[String]): Unit = {
    val grid = Array.fill(3)(Array.fill(3)(0))
    grid(0)(0) = 1
    println(grid.map(_.count(_ == 1)).sum)
  }
}
