
object Main {
  def main(args: Array[String]): Unit =
    val readings = Array(10, 20, 30)
    val i = args(0).toInt
    println(readings(i) - readings(i - 1)) // CONTROL! println(if i > 0 then (readings(i) - readings(i - 1)).toString else "no previous")
}
