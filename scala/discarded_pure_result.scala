
object Main {
  def main(args: Array[String]): Unit =
    val name = "ada"
    name.toUpperCase // BREAK!
    println(name) // CONTROL! println(name.toUpperCase)
}
