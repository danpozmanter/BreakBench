// LEVEL: LANGUAGE

object Main {
  def main(args: Array[String]): Unit =
    val ready = args.length < 5
    val x = if ready then 5 else 5
    val y: Int // REJECT!
    println(x)
}
