// LEVEL: STD

object Main {
  def main(args: Array[String]): Unit = {
    val cause = Exception("not found")
    val e = Exception("loading config: not found", cause)
    println(e.getMessage)
    println(e.getCause.getMessage)
  }
}
