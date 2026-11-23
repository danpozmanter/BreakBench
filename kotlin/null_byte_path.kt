import java.io.File

fun main() {
    File("/tmp/bb_files").mkdirs()
    File("/tmp/bb_files/report.txt").writeText("secret\n")

    val name = "report.txt\u0000.png"
    if (!name.endsWith(".png")) {
        println("rejected")
        return
    }
    try {
        print(File("/tmp/bb_files/$name").readText())
    } catch (e: Exception) {
        println("rejected")
    }
}
