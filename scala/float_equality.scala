object Main {
  def main(args: Array[String]): Unit = {
    val x = args(0).toDouble
    val y = args(1).toDouble
    val a = x + y
    println(if a == 0.3 then "equal" else "not equal") // CONTROL! println(if math.abs(a - 0.3) < 1e-9 then "equal" else "not equal")
  }
}
