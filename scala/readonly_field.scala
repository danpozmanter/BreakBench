case class Config(port: Int)

object Main {
  def main(args: Array[String]): Unit = {
    val c = Config(8080)
    c.port = 1 // BREAK!
    println(c.port)
  }
}
