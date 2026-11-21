import scala.collection.mutable.ArrayBuffer

class Item(var v: Int)

object Main {
  def main(args: Array[String]): Unit = {
    val v = ArrayBuffer(Item(1))
    val r = v(0)
    for i <- 0 until 1000 do v += Item(i)
    val w = ArrayBuffer(Item(7))
    r.v = 99
    println(w(0).v)
  }
}
