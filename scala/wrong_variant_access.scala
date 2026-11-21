enum Value {
  case IntValue(n: Int)
  case Text(text: String)
}

object Main {
  def main(args: Array[String]): Unit = {
    val v: Value = Value.IntValue(42)
    val Value.Text(s) = v
    println(s.length)
  }
}
