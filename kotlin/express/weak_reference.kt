// LEVEL: STD

import java.lang.ref.WeakReference

fun main() {
    var strong: Any? = Any()
    val weak = WeakReference(strong)
    strong = null
    System.gc()
    println(if (weak.get() == null) "gone" else "alive")
}
