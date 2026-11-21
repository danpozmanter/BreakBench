// LEVEL: LANGUAGE

object Main {
  def walk(n: Int): Int = walk(n + 1) + 1
  def main(args: Array[String]): Unit =
    try walk(0) catch case _: StackOverflowError => println("stack overflow")
}
