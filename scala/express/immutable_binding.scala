// LEVEL: LANGUAGE

object Main {
  def main(args: Array[String]): Unit =
    val x = 1
    x = 2 // REJECT!
    println(x)
}
