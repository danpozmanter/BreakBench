class Rec(var value: Long)

object Main {
  def main(args: Array[String]): Unit = {
    var a: Rec = Rec(1234)
    val b = a
    a = null
    val c = Rec(6666)
    println(b.value)
  }
}
