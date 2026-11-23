import java.io.FileInputStream

fun main(args: Array<String>) {
    val count = args[0].toLong()
    var total = 0L
    FileInputStream("/dev/zero").use { source ->
        for (i in 0 until count) {
            val message = source.readNBytes(4096)
            total += message.size
        }
    }
    println(total)
}
