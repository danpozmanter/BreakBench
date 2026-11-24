import scala.collection.mutable

object Main {
  def main(args: Array[String]): Unit =
    val stock = mutable.HashMap("apple" -> 3, "plum" -> 4)
    val name = args(0)
    println(stock(name) + 5) // CONTROL! println(stock.get(name).map(n => (n + 5).toString).getOrElse("unknown"))
}
