// LEVEL: STD

object Main {
  def main(args: Array[String]): Unit =
    println(if sys.env.get("BB_UNSET").isEmpty then "absent" else "present")
}
