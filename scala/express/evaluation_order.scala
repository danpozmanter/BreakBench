// LEVEL: LANGUAGE

object Main {
  def pair(a: Int, b: Int): String = s"$a $b"

  def main(args: Array[String]): Unit = {
    var n = 0
    def next(): Int = { n += 1; n }
    println(pair(next(), next()))
  }
}
