enum Color {
  case Red, Green, Blue
}

object Main {
  def name(c: Color): String = c match {
    case Color.Red => "red"
    case Color.Green => "green"
  }

  def main(args: Array[String]): Unit = {
    println(name(Color.fromOrdinal(args(0).toInt)))
  }
}
