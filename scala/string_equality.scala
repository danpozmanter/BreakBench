object Main {
  def main(args: Array[String]): Unit = {
    val s = "ab" + args(0)
    println(if s == "abc" then "equal" else "different")
  }
}
