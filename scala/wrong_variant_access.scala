enum Value {
  case IntValue(n: Int)
  case Text(text: String)
}

object Main {
  def main(args: Array[String]): Unit = {
    val v: Value = Value.IntValue(42)
    val Value.Text(s) = v // CONTROL! v match { case Value.Text(s) => println(s.length); case _ => println("not text") }
    println(s.length) // BREAK!
  }
}
