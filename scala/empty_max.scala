object Main {
  def main(args: Array[String]): Unit = {
    val xs = args.map(_.toLong)
    println(xs.max + 1)
  }
}
