import java.nio.file.Path
object Main {
  def main(args: Array[String]): Unit = {
    val joined = Path.of("/srv/app/uploads").resolve(args(0)) // CONTROL! val joined = Path.of("/srv/app/uploads").resolve(args(0).dropWhile(_ == '/'))
    println(if joined.startsWith("/srv/app/uploads") then "inside" else "escaped")
  }
}
