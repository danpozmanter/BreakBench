// LEVEL: STD

import java.util.concurrent.TimeUnit

object Main {
  def main(args: Array[String]): Unit =
    val p = ProcessBuilder("sleep", "10").start()
    if !p.waitFor(100, TimeUnit.MILLISECONDS) then
      p.destroyForcibly()
      p.waitFor()
      println("killed")
    else println("finished")
}
