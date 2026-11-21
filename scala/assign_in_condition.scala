object Main {
  def main(args: Array[String]): Unit = {
    var x = args(0).toInt
    var label = "not one"
    if (x = 1) then label = "one" // BREAK!
    // CONTROL! if x == 1 then label = "one"
    x += 0
    println(label)
  }
}
