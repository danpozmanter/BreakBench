// LEVEL: STD

import java.nio.file.Path

fun main() {
    val base = Path.of("/srv/app")
    val p = base.resolve("../../etc/passwd").normalize()
    println(if (p.startsWith(base)) "inside" else "outside")
}
