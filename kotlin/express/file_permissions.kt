// LEVEL: STD

import java.nio.file.Files
import java.nio.file.Path
import java.nio.file.attribute.PosixFilePermissions

fun main() {
    val path = Path.of("/tmp/bb_perm.txt")
    Files.deleteIfExists(path)
    Files.createFile(path, PosixFilePermissions.asFileAttribute(PosixFilePermissions.fromString("rw-------")))
    val mode = Files.getAttribute(path, "unix:mode") as Int
    println(Integer.toOctalString(mode and 0x1ff))
    Files.delete(path)
}
