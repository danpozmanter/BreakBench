import java.util.concurrent.CountDownLatch
object Main {
  val lock = Object()
  val checked = CountDownLatch(2)
  var claimed = false
  var winners = 0
  def claim(): Unit = {
    var available = false
    lock.synchronized { available = !claimed } // BREAK!
    // CONTROL! lock.synchronized { available = !claimed; if available then claimed = true }
    checked.countDown(); checked.await()
    if available then lock.synchronized { claimed = true; winners += 1 }
  }
  def main(args: Array[String]): Unit = {
    val a = Thread(() => claim()); val b = Thread(() => claim())
    a.start(); b.start(); a.join(); b.join()
    println(winners)
  }
}
