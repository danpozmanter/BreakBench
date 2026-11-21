// LEVEL: STD

import scala.collection.concurrent.TrieMap

object Main {
  def main(args: Array[String]): Unit = {
    val m = TrieMap[Int, Int]()
    val ts = (0 until 4).map(t => new Thread(() => for k <- 0 until 1000 do m.put(t * 1000 + k, k)))
    ts.foreach(_.start())
    ts.foreach(_.join())
    println(m.size)
  }
}
