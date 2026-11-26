case class Order(customer: Int, day: Int)

object Main {
  def main(args: Array[String]): Unit = {
    val orders = List.tabulate(200)(day => Order(day * 7 % 5, day))
    val sorted = orders.sortBy(_.customer)
    val kept = sorted.zip(sorted.tail).forall((a, b) => a.customer != b.customer || a.day < b.day)
    println(if kept then "kept" else "scrambled")
  }
}
