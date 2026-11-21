// LEVEL: STD

import scala.concurrent.duration.*

object Main {
  def main(args: Array[String]): Unit = {
    val total = 1500.millis + 500.millis
    val wrong = total + 5 // REJECT!
    println(total.toMillis)
  }
}
