import java.io.File

fun main() {
    val report = File("/tmp/bb_report.txt").bufferedWriter()
    report.write("total=42\n")
    // CONTROL! report.close()
}
