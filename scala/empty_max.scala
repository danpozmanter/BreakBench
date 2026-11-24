object Main {
  def main(args: Array[String]): Unit = {
    val xs = args.map(_.toLong)
    println(xs.max + 1) // CONTROL! println(if xs.isEmpty then "no readings" else (xs.max + 1).toString)
  }
}
