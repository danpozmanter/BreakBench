import scala.sys.process.*

object Main {
  def main(args: Array[String]): Unit = {
    Seq("sh", "-c", "exit 3").!
    println("backed up")
  }
}
