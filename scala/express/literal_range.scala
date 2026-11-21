// LEVEL: LANGUAGE

object Main {
  def main(args: Array[String]): Unit =
    val ok: Byte = 100
    val tooBig: Byte = 300 // REJECT!
    println(ok)
}
