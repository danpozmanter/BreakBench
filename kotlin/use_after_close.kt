import java.io.FileWriter

fun main() {
    val w = FileWriter("/tmp/bb_close.txt")
    w.write("a")
    w.close()
    w.write("b") // BREAK!
    println("ok")
}
