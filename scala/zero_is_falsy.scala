object Main {
  def main(args: Array[String]): Unit = {
    val qty: Option[Int] = args(0).toIntOption
    var present = false
    if qty then present = true // BREAK!
    // CONTROL! if qty.isDefined then present = true
    println(if present then s"have ${qty.get}" else "missing")
  }
}
