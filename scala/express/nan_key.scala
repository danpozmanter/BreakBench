// LEVEL: STD

object Main {
  def main(args: Array[String]): Unit = {
    val a = "NaN".toDouble
    val b = "NaN".toDouble
    val s = Set(a)
    println(if s.contains(b) then "found" else "missing")
  }
}
