// LEVEL: LANGUAGE

object Main {
  def use(fail: Boolean): Unit =
    try { if fail then throw IllegalStateException("bad") }
    finally println("released")

  def main(args: Array[String]): Unit = {
    use(false)
    try use(true) catch case _: IllegalStateException => ()
  }
}
