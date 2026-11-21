object Main {
  private val lock = Object()
  private var balance = 0

  def deposit(amount: Int): Unit = lock.synchronized { balance += amount }

  def main(args: Array[String]): Unit = {
    lock.synchronized { deposit(10) }
    println("done")
  }
}
