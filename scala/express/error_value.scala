// LEVEL: STD

object Main {
  def parsePort(s: String): Either[String, Int] = s.toIntOption.toRight("not a number")
  def main(args: Array[String]): Unit = parsePort("x") match
    case Right(p) => println(p)
    case Left(_) => println("error")
}
