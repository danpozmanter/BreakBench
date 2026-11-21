// LEVEL: LANGUAGE

object Main {
  def main(args: Array[String]): Unit = {
    if ("x".compareTo("x") == 0) println("same")
    if ("x".compareTo("x")) println("different") // REJECT!
  }
}
