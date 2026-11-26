object Main {
  def cachedCount(name: String): Option[Int] = if name == "ada" then Some(4) else None

  def main(args: Array[String]): Unit = {
    val cached = cachedCount(args(0))
    val count = cached.getOrElse(0) + 1
    println(count)
  }
}
