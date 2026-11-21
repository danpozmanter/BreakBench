// LEVEL: STD

import java.nio.file.Path

object Main {
  def main(args: Array[String]): Unit = {
    val base = Path.of("/srv/app")
    val p = base.resolve("../../etc/passwd").normalize()
    println(if p.startsWith(base) then "inside" else "outside")
  }
}
