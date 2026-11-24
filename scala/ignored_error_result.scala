import java.nio.file.{Files, Path}

object Main {
  def save(path: String): Unit = Files.writeString(Path.of(path), "data")

  def main(args: Array[String]): Unit = {
    save("/dev/null/out.txt") // CONTROL! try { save("/dev/null/out.txt"); println("saved") } catch { case _: java.io.IOException => println("failed") }
    println("saved") // BREAK!
  }
}
