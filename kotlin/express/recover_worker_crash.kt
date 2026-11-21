// LEVEL: STD

import kotlin.concurrent.thread

fun main() {
    var crashed = false
    val t = thread(start = false) { throw IllegalStateException("boom") }
    t.setUncaughtExceptionHandler { _, _ -> crashed = true }
    t.start()
    t.join()
    if (crashed) println("worker crashed")
}
