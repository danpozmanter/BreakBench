class Shape {
  def area: Int = 0
  def describe: String = s"area $area"
}

class Square extends Shape {
  def area: Int = 4 // CONTROL! override def area: Int = 4
}

object Main {
  def main(args: Array[String]): Unit = {
    println(Square().describe)
  }
}
