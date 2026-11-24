object Main {
  def findName(id: Long): Option[String] = if id == 1 then Some("alice") else None

  def main(args: Array[String]): Unit = {
    val name = findName(args(0).toLong)
    println(s"hello, $name") // CONTROL! println(s"hello, ${name.getOrElse("nobody")}")
  }
}
