import java.nio.file.{Files, Path}
import scala.io.Source
import scala.util.Using

object Main {
  def main(args: Array[String]): Unit = {
    Files.createDirectories(Path.of("/tmp/bb_files"))
    Files.writeString(Path.of("/tmp/bb_files/report.txt"), "secret\n")

    val name = "report.txt\u0000.png"
    if (!name.endsWith(".png")) println("rejected")
    else
      try print(Using.resource(Source.fromFile("/tmp/bb_files/" + name))(_.mkString))
      catch case _: Exception => println("rejected")
  }
}
