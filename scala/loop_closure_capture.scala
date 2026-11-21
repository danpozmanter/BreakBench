import scala.collection.mutable.ArrayBuffer

object Main {
  def main(args: Array[String]): Unit = {
    val fs = ArrayBuffer[() => Int]()
    for i <- 0 until 3 do fs += (() => i)
    println(fs.map(_()).mkString(","))
  }
}
