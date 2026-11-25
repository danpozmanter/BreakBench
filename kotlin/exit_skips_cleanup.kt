import java.io.File
import kotlin.system.exitProcess

val lock = File("/tmp/bb_scratch/run.lock")

fun checkArgs(args: Array<String>): Boolean {
    if ("--version" in args) {
        println("1.0")
        exitProcess(0) // BREAK!
        // CONTROL! return true
    }
    return false
}

fun main(args: Array<String>) {
    lock.writeText("")
    try {
        if (checkArgs(args)) return
        println("working")
    } finally {
        lock.delete()
    }
}
