// LEVEL: LANGUAGE

object Main {
  def pair(): (Int, String) = (1, "a")
  def main(args: Array[String]): Unit = {
    val (n, s) = pair()
    println(s"$n $s")
  }
}
