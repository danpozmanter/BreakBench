// LEVEL: LANGUAGE

object Main {
  def grade(score: Int): String = if score > 50 then "pass" else "fail"

  def bad(score: Int): String = if score > 50 then "pass" // REJECT!

  def main(args: Array[String]): Unit = println(grade(60))
}
