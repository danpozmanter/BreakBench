// LEVEL: LANGUAGE

case class P(x: Int, y: Int)

object Main {
  def main(args: Array[String]): Unit = {
    val a = P(1, 2)
    val b = P(1, 2)
    println(if a == b then "equal" else "different")
  }
}
