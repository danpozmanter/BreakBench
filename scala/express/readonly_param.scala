// LEVEL: LANGUAGE

object Main {
  def count(xs: Seq[Int]): Int =
    xs(0) = 9 // REJECT!
    xs.length

  def main(args: Array[String]): Unit =
    println(count(Seq(1, 2, 3)))
}
