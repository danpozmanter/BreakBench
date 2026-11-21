import kotlin.concurrent.thread

fun main(args: Array<String>) {
    var total = 0L
    val worker = thread {
        for (a in args) total += a.toLong()
    }
    worker.join()
    println("total $total")
}
