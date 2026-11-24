object Main {
  def main(args: Array[String]): Unit = {
    val d = args(0).toInt
    println(100 / d) // CONTROL! println(if d == 0 then "cannot divide" else (100 / d).toString)
  }
}
