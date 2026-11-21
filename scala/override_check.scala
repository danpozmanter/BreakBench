class Shape {
  def describe: String = "shape"
}

class Circle extends Shape {
  override def describe: String = "circle"
  override def descibe: String = "circle" // BREAK!
}

object Main {
  def main(args: Array[String]): Unit = {
    val s: Shape = Circle()
    println(s.describe)
  }
}
