import scala.collection.mutable

object Main {
  def main(args: Array[String]): Unit = {
    val map = mutable.HashMap[Long, Long]()
    val threads = (0 until 8).map { t =>
      val th = Thread(() => for k <- 0L until 100_000L do map(t * 100_000L + k) = k)
      th.start()
      th
    }
    threads.foreach(_.join())
    println(map.size)
  }
}
