object Main {
  def main(args: Array[String]): Unit = {
    var counter = 0L
    val threads = (0 until 8).map { _ =>
      val th = Thread(() => for _ <- 0 until 1_000_000 do counter += 1)
      th.start()
      th
    }
    threads.foreach(_.join())
    println(counter)
  }
}
