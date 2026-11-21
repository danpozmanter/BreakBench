object Main {
  def main(args: Array[String]): Unit = {
    val ids = List(10, 20, 30)
    val id = args(0)
    println(if ids.contains(id) then "found" else "missing") // CONTROL! println(if ids.contains(id.toInt) then "found" else "missing")
  }
}
