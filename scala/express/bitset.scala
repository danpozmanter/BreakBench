// LEVEL: STD

import scala.collection.immutable.BitSet

object Main {
  def main(args: Array[String]): Unit = {
    val b = BitSet(1000)
    println(s"${b(1000)} ${b(999)}")
  }
}
