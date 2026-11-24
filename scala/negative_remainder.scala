
object Main {
  def isOdd(n: Long): Boolean = n % 2 == 1 // CONTROL! def isOdd(n: Long): Boolean = n % 2 != 0

  def main(args: Array[String]): Unit =
    println(if isOdd(args(0).toLong) then "odd" else "even")
}
