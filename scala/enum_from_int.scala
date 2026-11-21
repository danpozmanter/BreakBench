enum Color:
  case Red, Green, Blue

object Main {
  def main(args: Array[String]): Unit = {
    println("before")
    println(Color.fromOrdinal(args(0).toInt))
  }
}
