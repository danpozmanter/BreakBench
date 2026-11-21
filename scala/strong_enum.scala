enum Color:
  case Red, Green, Blue

def name(c: Color): String = c match
  case Color.Red => "red"
  case Color.Green => "green"
  case Color.Blue => "blue"

object Main {
  def main(args: Array[String]): Unit = {
    val c = Color.Green
    println(name(7)) // BREAK!
    println(name(c))
  }
}
