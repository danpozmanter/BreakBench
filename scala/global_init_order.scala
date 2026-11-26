object Main {
  val limit: Long = base() * 2 // BREAK!
  val baseValue: Long = "10".toLong
  // CONTROL! val limit: Long = base() * 2

  def base(): Long = baseValue

  def main(args: Array[String]): Unit = {
    println(limit)
  }
}
