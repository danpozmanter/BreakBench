import java.io.FileInputStream
import java.nio.file.{Files, Path}

object Main {
  def main(args: Array[String]): Unit = {
    val n = args(0).toInt
    Files.writeString(Path.of("/tmp/bb_fd.txt"), "x")
    for _ <- 0 until n do
      val f = FileInputStream("/tmp/bb_fd.txt")
      f.read()
    println("done")
  }
}
