case class User(name: Option[String])

object Main {
  def main(args: Array[String]): Unit = {
    val decoded = User(None)
    println(decoded.name.length) // BREAK!
    // CONTROL! println(decoded.name.get.length)
  }
}
