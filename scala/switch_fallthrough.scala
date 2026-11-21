object Main {
  def main(args: Array[String]): Unit = {
    val n = args(0).toInt
    val name = n match {
      case 1 => "one"
      case 2 => "two"
      case _ => "other"
    }
    println(name)
  }
}
