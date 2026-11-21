object Main {
  def main(args: Array[String]): Unit = {
    var count = 0L
    val add: Runnable = () => for (_ <- 0 until 1_000_000) count += 1
    val a = Thread(add)
    val b = Thread(add)
    a.start()
    b.start()
    a.join()
    b.join()
    println(count)
  }
}
