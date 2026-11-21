object Main {
  def main(args: Array[String]): Unit = {
    var i = 0
    i += 1
    i = i++ // BREAK!
    println(i)
  }
}
