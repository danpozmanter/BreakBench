import java.io.File
import java.io.FileInputStream

fun main(args: Array<String>) {
    val n = args[0].toInt()
    File("/tmp/bb_fd.txt").writeText("x")
    repeat(n) {
        val f = FileInputStream("/tmp/bb_fd.txt")
        f.read()
    }
    println("done")
}
