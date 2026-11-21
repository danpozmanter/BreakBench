// LEVEL: LANGUAGE

case class Config(timeout: Int, retries: Int)

object Main {
  def main(args: Array[String]): Unit =
    val c = Config(timeout = 5, retries = 3)
    val partial = Config(timeout = 5) // REJECT!
    println(s"${c.timeout} ${c.retries}")
}
