import java.util.concurrent.locks.ReentrantLock
object Main {
  def main(args: Array[String]): Unit = {
    def transfer(first: ReentrantLock, second: ReentrantLock): Unit =
      first.lock()
      try
        Thread.sleep(100)
        second.lock()
        second.unlock()
      finally first.unlock()
    val a = ReentrantLock()
    val b = ReentrantLock()
    val t1 = Thread(() => transfer(a, b))
    val t2 = Thread(() => transfer(b, a))
    t1.start(); t2.start()
    t1.join(); t2.join()
    println("finished")
  }
}
