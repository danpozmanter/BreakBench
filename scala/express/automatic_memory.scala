// LEVEL: LANGUAGE

class Rec(val id: Int, val data: Array[Byte])

object Main {
  def main(args: Array[String]): Unit = {
    var last = Rec(0, Array.emptyByteArray)
    for i <- 0 until 4_000_000 do last = Rec(i, new Array[Byte](1016))
    println(last.id)
  }
}
