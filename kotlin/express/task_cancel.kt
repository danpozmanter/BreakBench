// LEVEL: STD

import kotlin.concurrent.thread

fun main() {
    val t = thread {
        try {
            while (true) Thread.sleep(1)
        } catch (e: InterruptedException) {
            return@thread
        }
    }
    Thread.sleep(20)
    t.interrupt()
    t.join()
    println("stopped")
}
