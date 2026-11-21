// LEVEL: LANGUAGE

fun work() {
    try { throw IllegalStateException("boom") } finally { println("cleanup") }
}

fun main() {
    try { work() } catch (e: IllegalStateException) { println("recovered") }
}
