object Main {
  def grade(score: Int): String =
    if score > 50 then "pass"
    else if score < 50 then "fail"
    // CONTROL! else "borderline"

  def main(args: Array[String]): Unit = {
    println(grade(args(0).toInt))
  }
}
