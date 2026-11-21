// LEVEL: STD

import scala.collection.immutable.ListMap

object Main {
  def main(args: Array[String]): Unit = println(ListMap("c" -> 1, "a" -> 2, "b" -> 3).keys.mkString(" "))
}
