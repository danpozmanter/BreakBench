import java.util.concurrent.locks.ReentrantLock
import java.util.concurrent.CountDownLatch
object Main {
  def main(args: Array[String]): Unit = {
    val ready = new CountDownLatch(2)
    def transfer(first: ReentrantLock, second: ReentrantLock): Unit =
      first.lock()
      try
        ready.countDown() // BREAK!
        ready.await() // BREAK!
        second.lock()
        second.unlock()
      finally first.unlock()
    val a = ReentrantLock()
    val b = ReentrantLock()
    val t1 = Thread(() => transfer(a, b))
    val t2 = Thread(() => transfer(b, a)) // CONTROL! val t2 = Thread(() => transfer(a, b))
    t1.start(); t2.start()
    t1.join(); t2.join()
    println("finished")
  }
}
