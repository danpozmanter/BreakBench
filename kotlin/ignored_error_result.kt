import java.io.File

fun save(path: String) {
    File(path).writeText("data")
}

fun main() {
    save("/nonexistent/dir/out.txt")
    println("saved")
}
