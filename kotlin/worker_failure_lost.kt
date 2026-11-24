import kotlin.concurrent.thread

fun main(args: Array<String>) {
    var total = 0L
    // CONTROL! var failed = false
    val worker = thread {
        for (a in args) total += a.toLong() // CONTROL! try { for (a in args) total += a.toLong() } catch (e: NumberFormatException) { failed = true }
    }
    worker.join()
    println("total $total") // CONTROL! println(if (failed) "failed" else "total $total")
}
