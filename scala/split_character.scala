object Main {
  def main(args: Array[String]): Unit = {
    val name = "a👍b"
    val n = args(0).toInt
    println(name.take(n)) // CONTROL! println(name.substring(0, name.offsetByCodePoints(0, n)))
  }
}
