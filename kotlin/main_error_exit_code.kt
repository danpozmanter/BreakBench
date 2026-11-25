import java.io.File
import java.io.IOException

fun main() {
    val text = try {
        File("/nonexistent/bb.conf").readText()
    } catch (e: IOException) {
        System.err.println("config missing: $e")
        return // BREAK!
        // CONTROL! throw e
    }
    println(text.length)
}
