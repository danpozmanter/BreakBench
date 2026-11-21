// LEVEL: STD

import java.util.concurrent.TimeUnit

fun main() {
    val p = ProcessBuilder("sleep", "10").start()
    if (!p.waitFor(100, TimeUnit.MILLISECONDS)) {
        p.destroyForcibly()
        p.waitFor()
        println("killed")
    } else {
        println("finished")
    }
}
