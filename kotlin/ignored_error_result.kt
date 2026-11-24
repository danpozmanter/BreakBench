import java.io.File

fun save(path: String) {
    File(path).writeText("data")
}

fun main() {
    save("/dev/null/out.txt") // CONTROL! try { save("/dev/null/out.txt"); println("saved") } catch (e: java.io.IOException) { println("failed") }
    println("saved") // BREAK!
}
