object Main {
  def show(f: Double): Unit = println(f.toLong)

  def main(args: Array[String]): Unit = {
    val n: Long = args(0).toLong
    show(n) // CONTROL! println(n)
  }
}
