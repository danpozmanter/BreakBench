import java.io.File

fun main() {
    File("/dev/full").bufferedWriter().use { it.write("data\n") }
    println("saved")
}
