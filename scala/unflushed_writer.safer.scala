import java.nio.file.{Files, Path}

object Main {
  def main(args: Array[String]): Unit = {
    Files.writeString(Path.of("/tmp/bb_report.txt"), "total=42\n")
  }
}
