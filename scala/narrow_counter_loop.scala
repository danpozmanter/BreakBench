object Main {
  def main(args: Array[String]): Unit = {
    var passes = 0
    var i: Byte = 0 // BREAK!
    // CONTROL! var i: Short = 0
    while (i < 300) {
      passes += 1
      i = (i + 1).toByte // BREAK!
      // CONTROL! i = (i + 1).toShort
    }
    println(passes)
  }
}
