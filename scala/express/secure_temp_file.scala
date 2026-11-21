// LEVEL: STD

import java.nio.file.Files

object Main {
  def main(args: Array[String]): Unit =
    val path = Files.createTempFile("bb", ".txt")
    Files.writeString(path, "ok")
    println(Files.readString(path))
    Files.delete(path)
}
