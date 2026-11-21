import java.io.FileWriter

object Main {
  def main(args: Array[String]): Unit = {
    val w = FileWriter("/tmp/bb_close.txt")
    w.write("a")
    w.close()
    w.write("b") // BREAK!
    println("ok")
  }
}
