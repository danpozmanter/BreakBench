// LEVEL: LANGUAGE

object Main {
  def work(): Unit = try throw IllegalStateException("boom") finally println("cleanup")
  def main(args: Array[String]): Unit =
    try work() catch case _: IllegalStateException => println("recovered")
}
