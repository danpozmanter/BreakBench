// LEVEL: STD

import java.util.concurrent.LinkedBlockingQueue

object Main {
  def main(args: Array[String]): Unit = {
    val queue = LinkedBlockingQueue[Int]()
    val t = new Thread(() => for v <- 1 to 3 do queue.add(v))
    t.start()
    val got = List.fill(3)(queue.take())
    t.join()
    println(got.mkString(" "))
  }
}
