final case class Node(value: Long, next: Node | Null)
object Main {
  def buildAndRelease(n: Long): Long =
    var head: Node | Null = null
    var i = 0L
    while i < n do
      head = Node(i, head)
      i += 1
    if head == null then 0 else head.nn.value

  def main(args: Array[String]): Unit =
    buildAndRelease(args(0).toLong)
    System.gc()
    println("done")
}
