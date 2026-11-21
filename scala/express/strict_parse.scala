// LEVEL: STD

object Main {
  def main(args: Array[String]): Unit = println(if args(0).toLongOption.isEmpty then "invalid" else "valid")
}
