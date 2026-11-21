object Main {
  def main(args: Array[String]): Unit = {
    val n = args(0).toInt
    var x: Int // BREAK!
    // CONTROL! var x: Int = 0
    if n > 5 then x = 10
    println(x)
  }
}
