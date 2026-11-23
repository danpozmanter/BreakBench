import java.util.concurrent.locks.ReentrantLock

object Main {
  val lock = ReentrantLock()
  var balance = 100

  def withdraw(amount: Int): Unit = {
    lock.lock()
    if (amount > balance) {
      return
    }
    balance -= amount
    lock.unlock()
  }

  def main(args: Array[String]): Unit = {
    withdraw(500)
    val worker = Thread(() => withdraw(30))
    worker.start()
    worker.join()
    println(balance)
  }
}
