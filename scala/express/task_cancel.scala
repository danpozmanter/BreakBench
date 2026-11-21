// LEVEL: STD

object Main {
  def main(args: Array[String]): Unit = {
    val t = new Thread(() =>
      try while true do Thread.sleep(1)
      catch case _: InterruptedException => ()
    )
    t.start()
    Thread.sleep(20)
    t.interrupt()
    t.join()
    println("stopped")
  }
}
