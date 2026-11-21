
object Main {
  def main(args: Array[String]): Unit =
    var status = "pending"
    if args(0) == "ok" then
      val status = "done" // CONTROL! status = "done"
      System.err.println(s"status: $status")
    println(status)
}
