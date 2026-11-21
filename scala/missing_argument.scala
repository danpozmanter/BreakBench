object Main {
  def area(w: Int, h: Int): Int = w * h

  def main(args: Array[String]): Unit = {
    println(area(3)) // BREAK!
    println(area(3, 4))
  }
}
