// LEVEL: STD

object Main {
  def main(args: Array[String]): Unit = {
    Thread.setDefaultUncaughtExceptionHandler((_, _) => println("hook ran"))
    throw IllegalStateException("boom")
  }
}
