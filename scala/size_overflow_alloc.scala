object Main {
  def main(args: Array[String]): Unit = {
    val count = args(0).toLong
    val size = count * 8
    val records = new Array[Byte](size.toInt)
    records(8) = 99
    println("stored")
  }
}
