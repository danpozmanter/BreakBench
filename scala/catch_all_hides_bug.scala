object Main {
  def parseOrder(line: String): Int = {
    val parts = line.split(",")
    parts(2).toInt // BREAK!
    // CONTROL! parts(1).toInt
  }

  def main(args: Array[String]): Unit = {
    try println(parseOrder("widget,5"))
    catch { case _: Exception => println("invalid order") }
  }
}
