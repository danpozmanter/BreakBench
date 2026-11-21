
object Main {
  val Header = 5

  def main(args: Array[String]): Unit =
    val message = args(0)
    val payload = message.length - Header
    if payload < 0 then println("short")
    else println(payload)
}
