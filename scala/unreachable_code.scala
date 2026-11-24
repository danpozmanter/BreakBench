object Main {
  def check(): Unit = {
    println("ok")
    return // BREAK!
    println("checked")
  }

  def main(args: Array[String]): Unit = check()
}
