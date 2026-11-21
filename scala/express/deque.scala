// LEVEL: STD

import scala.collection.mutable.ArrayDeque

object Main {
  def main(args: Array[String]): Unit = {
    val d = ArrayDeque[Int]()
    d.append(1)
    d.prepend(0)
    d.append(2)
    println(s"${d.removeHead()} ${d.removeLast()}")
  }
}
