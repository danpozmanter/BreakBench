// LEVEL: LANGUAGE

object Main {
  def main(args: Array[String]): Unit = {
    val id = 42
    if (id == 42) println("match")
    if (id == "42") println("text") // REJECT!
  }
}
