enum Color:
  case Red, Green, Blue

object Main {
  def main(args: Array[String]): Unit = {
    println("before")
    println(Color.fromOrdinal(args(0).toInt)) // CONTROL! val n = args(0).toInt; println(if n >= 0 && n < Color.values.length then Color.fromOrdinal(n).toString else "invalid")
  }
}
