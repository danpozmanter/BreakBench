object Main {
  def main(args: Array[String]): Unit = {
    val values = Vector(3, 4)
    val sum = values.sum
    val count = values.size
    val avg: Double = sum / count
    println(f"$avg%.1f")
  }
}
