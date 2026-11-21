// LEVEL: STD

import scala.sys.process.*

object Main {
  def main(args: Array[String]): Unit = {
    println(Seq("echo", "hi; touch /tmp/bb_x").!!.trim)
  }
}
