object Main {
  def main(args: Array[String]): Unit = {
    val s = ""
    println(if ((s.nonEmpty) & (s(0) == 'a')) "yes" else "no") // CONTROL! println(if (s.nonEmpty && s(0) == 'a') "yes" else "no")
  }
}
