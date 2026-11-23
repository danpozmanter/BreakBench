class Node {
  val data: Array[Byte] = Array.fill(4096)(1.toByte)
  var other: Option[Node] = None
}

object Main {
  def main(args: Array[String]): Unit = {
    val n = args(0).toLong
    var i = 0L
    while i < n do
      val parent = Node()
      val child = Node()
      parent.other = Some(child)
      child.other = Some(parent)
      i += 1
    println("done")
  }
}
