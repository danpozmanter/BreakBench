import java.nio.file.{Files, Path}
import scala.sys.process._
object Main {
  def main(args: Array[String]): Unit = {
    Files.deleteIfExists(Path.of("/tmp/bb_pwned"))
    s"echo ${args(0)}".!!
    println(if Files.exists(Path.of("/tmp/bb_pwned")) then "injected" else "safe")
  }
}
