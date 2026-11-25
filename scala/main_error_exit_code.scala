import java.io.IOException
import java.nio.file.{Files, Path}

object Main {
  def main(args: Array[String]): Unit = {
    val text =
      try Files.readString(Path.of("/nonexistent/bb.conf"))
      catch {
        case e: IOException =>
          System.err.println(s"config missing: $e")
          return // BREAK!
          // CONTROL! throw e
      }
    println(text.length)
  }
}
