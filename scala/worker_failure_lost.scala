
object Main {
  def main(args: Array[String]): Unit =
    var total = 0L
    val worker = Thread(() => for a <- args do total += a.toLong)
    worker.start()
    worker.join()
    println(s"total $total")
}
