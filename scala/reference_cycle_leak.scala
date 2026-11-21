class Node {
  var next: Node = null
  val payload = new Array[Byte](2048)
}

class Obj {
  val payload = new Array[Byte](2048)
  var callback: () => Int = null
}

object Main {
  def main(args: Array[String]): Unit = {
    val n = args(0).toInt
    var total = 0L
    for _ <- 0 until n do
      val a = Node()
      val b = Node()
      a.next = b
      b.next = a
      val o = Obj()
      o.callback = () => o.payload.length
      total += o.callback()
    println(if total < 0 then "unreachable" else "done")
  }
}
