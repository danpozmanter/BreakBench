import java.nio.file.{Files, Path}
import scala.util.Using

object Main {
  def main(args: Array[String]): Unit = {
    Using.resource(Files.newBufferedWriter(Path.of("/dev/full")))(_.write("data\n")) // CONTROL! try { Using.resource(Files.newBufferedWriter(Path.of("/dev/full")))(_.write("data\n")); println("saved") } catch { case _: java.io.IOException => println("failed") }
    println("saved") // BREAK!
  }
}
