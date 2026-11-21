// LEVEL: STD

import java.nio.file.{Files, Path}
import java.nio.file.attribute.PosixFilePermissions

object Main {
  def main(args: Array[String]): Unit =
    val path = Path.of("/tmp/bb_perm.txt")
    Files.deleteIfExists(path)
    Files.createFile(path, PosixFilePermissions.asFileAttribute(PosixFilePermissions.fromString("rw-------")))
    val mode = Files.getAttribute(path, "unix:mode").asInstanceOf[Int]
    println(Integer.toOctalString(mode & 0x1ff))
    Files.delete(path)
}
