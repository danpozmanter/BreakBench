object Main {
  def main(args: Array[String]): Unit = {
    val xs = Vector(5.0, Double.NaN, 3.0, 1.0, Double.NaN, 4.0, 2.0)
    val sorted = xs.sorted
    val finite = sorted.filterNot(_.isNaN)
    val ordered = finite.zip(finite.drop(1)).forall((a, b) => a <= b)
    println(if ordered then "ordered" else "unordered")
  }
}
