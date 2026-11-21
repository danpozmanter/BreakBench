// LEVEL: STD

import kotlin.io.path.createTempFile
import kotlin.io.path.deleteExisting
import kotlin.io.path.readText
import kotlin.io.path.writeText

fun main() {
    val path = createTempFile("bb", ".txt")
    path.writeText("ok")
    println(path.readText())
    path.deleteExisting()
}
