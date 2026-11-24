
object Main {
  def main(args: Array[String]): Unit =
    var total = 0L
    // CONTROL! var failed = false
    val worker = Thread(() => for a <- args do total += a.toLong) // CONTROL! val worker = Thread(() => try for a <- args do total += a.toLong catch case _: NumberFormatException => failed = true)
    worker.start()
    worker.join()
    println(s"total $total") // CONTROL! println(if failed then "failed" else s"total $total")
}
