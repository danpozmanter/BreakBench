// LEVEL: STD

object Main {
  def main(args: Array[String]): Unit =
    println(if "^(a+)+$".r.matches("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa!") then "match" else "no match")
}
