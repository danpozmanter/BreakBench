import java.io.File

fun main() {
    File("/dev/full").bufferedWriter().use { it.write("data\n") } // CONTROL! try { File("/dev/full").bufferedWriter().use { it.write("data\n") }; println("saved") } catch (e: java.io.IOException) { println("failed") }
    println("saved") // BREAK!
}
