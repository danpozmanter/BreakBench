object Main {
  def main(args: Array[String]): Unit = {
    val xs = Vector(1, 2, 3, 4, 5, 6)
    val evens = xs.view.filter(_ % 2 == 0)
    val total = evens.sum
    val count = evens.size
    println(s"$total $count")
  }
}
