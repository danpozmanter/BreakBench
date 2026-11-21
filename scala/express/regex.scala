// LEVEL: STD

object Main {
  def main(args: Array[String]): Unit = {
    val re = "^[a-z]+[0-9]{2}$".r
    println(s"${re.matches("abc12")} ${re.matches("abc1")}")
  }
}
