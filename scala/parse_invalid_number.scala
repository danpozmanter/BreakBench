object Main {
  def main(args: Array[String]): Unit = {
    val n = args(0).toInt // CONTROL! val n = args(0).toIntOption
    println(n + 1) // CONTROL! println(n.map(_ + 1).getOrElse("invalid"))
  }
}
