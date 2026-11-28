import scala.sys.process.*

object Main {
  def main(args: Array[String]): Unit = {
    Seq("sh", "-c", "exit 3").!! // CONTROL! if Seq("sh", "-c", "exit 3").! != 0 then { println("backup failed"); return }
    println("backed up")
  }
}
