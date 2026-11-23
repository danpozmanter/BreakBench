import java.io.Closeable
import java.io.IOException

class Report : Closeable {
    fun write(text: String): Unit = throw IOException("disk full")

    override fun close(): Unit = throw IOException("close failed")
}

fun save() {
    Report().use { it.write("totals") }
}

fun main() {
    try {
        save()
    } catch (error: IOException) {
        println(error.message)
    }
}
