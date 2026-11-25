object Main {
  def size(n: Int): String = {
    var label = "small"
    if (n > 5); // CONTROL! if (n > 5)
    {
      label = "big"
    }
    label
  }

  def main(args: Array[String]): Unit = {
    println(size(args(0).toInt))
    println(size(args(1).toInt))
  }
}
