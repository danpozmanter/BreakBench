// LEVEL: STD

object Main {
  def main(args: Array[String]): Unit = {
    val slots = new Array[Int](10)
    val a = new Thread(() => for i <- 0 until 5 do slots(i) = i)
    val b = new Thread(() => for i <- 5 until 10 do slots(i) = i)
    a.start(); b.start()
    a.join(); b.join()
    println(slots.sum)
  }
}
