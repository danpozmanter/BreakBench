import java.io.File

val lock = File("/tmp/bb_scratch/reader.lock")

fun rows(): Sequence<String> = sequence {
    lock.writeText("")
    try {
        yieldAll(listOf("alpha", "beta", "gamma"))
    } finally {
        lock.delete()
    }
}

fun main() {
    for (line in rows()) {
        println(line)
        break // BREAK!
    }
}
