object Main {
  def main(args: Array[String]): Unit = {
    val code = args(0)
    println(if code == 0 then "same" else "different") // CONTROL! println(if code == "0" then "same" else "different")
  }
}
