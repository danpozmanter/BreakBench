// LEVEL: STD

object Main {
  def main(args: Array[String]): Unit = {
    val counts = List("a", "b", "a").groupMapReduce(identity)(_ => 1)(_ + _)
    println(s"a=${counts("a")} b=${counts("b")}")
  }
}
