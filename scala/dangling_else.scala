object Main {
  def main(args: Array[String]): Unit = {
    val a = args(0).toInt != 0
    val b = true
    var r = "unset"
    if a then
      if b then r = "both"
    else
      r = "not a"
    println(r)
  }
}
