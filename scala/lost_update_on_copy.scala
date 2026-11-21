class Account(var balance: Int)

object Main {
  def main(args: Array[String]): Unit = {
    val accounts = Vector(Account(100))
    for acct <- accounts do acct.balance += 50
    println(accounts(0).balance)
  }
}
