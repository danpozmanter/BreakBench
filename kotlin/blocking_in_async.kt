import kotlinx.coroutines.joinAll
import kotlinx.coroutines.launch
import kotlinx.coroutines.runBlocking

fun main() = runBlocking {
    val start = System.nanoTime()
    joinAll(launch { Thread.sleep(500) }, launch { Thread.sleep(500) })
    println(if ((System.nanoTime() - start) / 1_000_000 < 800) "concurrent" else "serial")
}
