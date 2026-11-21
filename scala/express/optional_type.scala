// LEVEL: STD

object Main {
  def main(args: Array[String]): Unit = {
    val o: Option[Int] = None
    val n = o + 1 // REJECT!
    println(if o.isEmpty then "none" else "some")
  }
}
