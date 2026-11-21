object Main {
  def main(args: Array[String]): Unit = {
    val x = args(0).toInt
    val even = x & 1 == 0 // BREAK!
    // CONTROL! val even = (x & 1) == 0
    println(if even then "even" else "odd")
  }
}
