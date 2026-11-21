// LEVEL: STD

import java.util.concurrent.ConcurrentHashMap
import kotlin.concurrent.thread

fun main() {
    val m = ConcurrentHashMap<Int, Int>()
    val ts = List(4) { t -> thread { for (k in 0 until 1000) m[t * 1000 + k] = k } }
    ts.forEach { it.join() }
    println(m.size)
}
