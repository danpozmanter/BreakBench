class Account(var balance: Int)

object Main {
  def transfer(from: Account, to: Account, amount: Int): Unit = {
    // CONTROL! if from eq to then return
    val newFrom = from.balance - amount
    val newTo = to.balance + amount
    from.balance = newFrom
    to.balance = newTo
  }

  def main(args: Array[String]): Unit = {
    val a = Account(100)
    transfer(a, a, 30)
    println(a.balance)
  }
}
