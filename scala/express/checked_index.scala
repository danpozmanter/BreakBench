// LEVEL: STD

object Main {
  def main(args: Array[String]): Unit =
    val xs = Seq(10, 20, 30)
    println(xs.lift(5).getOrElse("none"))
}
