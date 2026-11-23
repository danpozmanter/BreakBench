object Main {
  def main(args: Array[String]): Unit = {
    val child = ProcessBuilder("sh", "-c", "printf HELLO-WO; sleep 0.2; printf RLD-1234").start()
    val message = new Array[Byte](16)
    child.getInputStream.read(message)
    child.waitFor()
    println(String(message, "UTF-8"))
  }
}
