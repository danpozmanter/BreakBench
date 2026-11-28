import java.io.File

fun main() {
    File("/tmp/bb_report.txt").writeText("total=42\n")
}
