
object Main {
  def main(args: Array[String]): Unit = {
    println(if "^(a+)+$".r.matches(args(0)) then "match" else "no match")
  }
}
