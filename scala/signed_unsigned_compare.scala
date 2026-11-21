object Main {
  def main(args: Array[String]): Unit = {
    val xs = Vector(1, 2, 3)
    val i = args(0).toLong
    if i < xs.size then println("less") else println("not less")
  }
}
