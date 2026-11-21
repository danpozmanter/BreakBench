// LEVEL: PROJECT

import scala.xml.Utility

object Main {
  def main(args: Array[String]): Unit =
    println(Utility.escape("""<a href="x">Tom & Jerry</a>"""))
}
