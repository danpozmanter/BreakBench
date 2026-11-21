import scala.collection.mutable.ArrayBuffer

object Main {
  def addItem(item: String, cart: ArrayBuffer[String] = ArrayBuffer()): ArrayBuffer[String] = {
    cart += item
    cart
  }

  def main(args: Array[String]): Unit = {
    addItem("x")
    val b = addItem("y")
    println(b.size)
  }
}
