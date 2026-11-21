object Main {
  def check(): Unit = {
    println("ok")
    return
    println("checked")
  }

  def main(args: Array[String]): Unit = check()
}
