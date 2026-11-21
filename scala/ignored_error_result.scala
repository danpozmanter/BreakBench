import java.nio.file.{Files, Path}

object Main {
  def save(path: String): Unit = Files.writeString(Path.of(path), "data")

  def main(args: Array[String]): Unit = {
    save("/nonexistent/dir/out.txt")
    println("saved")
  }
}
