import java.time.{DateTimeException, LocalDate}

object Main {
  def main(args: Array[String]): Unit = {
    val date = LocalDate.of(args(0).toInt, args(1).toInt, args(2).toInt) // BREAK!
    println(date) // BREAK!
    // CONTROL! try println(LocalDate.of(args(0).toInt, args(1).toInt, args(2).toInt)) catch { case _: DateTimeException => println("invalid") }
  }
}
