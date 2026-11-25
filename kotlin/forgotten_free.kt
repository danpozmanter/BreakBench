class Rec {
    val data = ByteArray(4096) { 1 }
}

fun main(args: Array<String>) {
    val n = args[0].toLong()
    var seen = 0L
    for (i in 0 until n) {
        val rec = Rec()
        seen += rec.data[0]
    }
    println(if (seen == n) "done" else "lost")
}
