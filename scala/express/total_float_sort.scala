// LEVEL: STD

object Main {
  def main(args: Array[String]): Unit = {
    val xs = List(3.0, Double.NaN, 1.0, 2.0).sorted(using Ordering.Double.TotalOrdering)
    println(xs.map(x => if x.isNaN then "NaN" else x.toInt.toString).mkString(" "))
  }
}
