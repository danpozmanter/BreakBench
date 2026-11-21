// LEVEL: STD

import scala.collection.mutable.PriorityQueue

object Main {
  def main(args: Array[String]): Unit = {
    val q = PriorityQueue(3, 1, 2)(using Ordering[Int].reverse)
    println(s"${q.dequeue()} ${q.dequeue()} ${q.dequeue()}")
  }
}
