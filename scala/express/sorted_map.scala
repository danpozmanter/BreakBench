// LEVEL: STD

import scala.collection.immutable.TreeMap

object Main {
  def main(args: Array[String]): Unit = println(TreeMap("c" -> 1, "a" -> 2, "b" -> 3).keys.mkString(" "))
}
