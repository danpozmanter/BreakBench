object Main {
  def main(args: Array[String]): Unit = {
    val line = args(0)
    val pos = line.indexOf(':')
    println(line.substring(pos + 1)) // CONTROL! println(if pos < 0 then "no colon" else line.substring(pos + 1))
  }
}
