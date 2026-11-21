object Main {
  def main(args: Array[String]): Unit = {
    val x = args(0).toInt
    val inside = 1 < x < 3 // BREAK!
    // CONTROL! val inside = 1 < x && x < 3
    println(if inside then "inside" else "outside")
  }
}
