// LEVEL: STD

import java.util.concurrent.atomic.AtomicLong

object Main {
  def main(args: Array[String]): Unit = {
    val counter = AtomicLong()
    val work: Runnable = () => for _ <- 0 until 100000 do counter.incrementAndGet()
    val a = new Thread(work); val b = new Thread(work)
    a.start(); b.start(); a.join(); b.join()
    println(counter.get())
  }
}
