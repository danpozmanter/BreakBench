// LEVEL: STD

object Main {
  def inner(): Array[StackTraceElement] = Thread.currentThread().getStackTrace
  def main(args: Array[String]): Unit =
    println(if inner().exists(_.getMethodName == "inner") then "inner" else "missing")
}
