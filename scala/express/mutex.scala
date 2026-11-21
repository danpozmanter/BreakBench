// LEVEL: STD

import java.util.concurrent.locks.ReentrantLock

object Main {
  def main(args: Array[String]): Unit = {
    val lock = ReentrantLock()
    var counter = 0L
    val work: Runnable = () => for _ <- 0 until 100000 do { lock.lock(); try counter += 1 finally lock.unlock() }
    val a = new Thread(work); val b = new Thread(work)
    a.start(); b.start(); a.join(); b.join()
    println(counter)
  }
}
