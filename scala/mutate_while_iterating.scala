import scala.collection.mutable.ArrayBuffer

object Main {
  def main(args: Array[String]): Unit = {
    val xs = ArrayBuffer(1, 2, 2, 3)
    for x <- xs do
      if x == 2 then xs -= x
    println(xs.mkString(","))
  }
}
