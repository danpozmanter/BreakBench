import java.io.IOException

fun writeReport() {
    throw IOException("disk full")
}

fun closeLog() {}

fun saveReport() {
    try {
        writeReport()
    } finally {
        closeLog()
        return // BREAK!
    }
}

fun main() {
    try {
        saveReport()
        println("saved")
    } catch (e: IOException) {
        println("failed")
    }
}
