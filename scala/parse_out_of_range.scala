object Main {
  def main(args: Array[String]): Unit = {
    val n = args(0).toLong // CONTROL! val n = args(0).toLongOption
    println(n) // CONTROL! println(n.getOrElse("invalid"))
  }
}
