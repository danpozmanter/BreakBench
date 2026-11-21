// LEVEL: LANGUAGE

fun use(fail: Boolean) {
    try {
        if (fail) throw IllegalStateException("bad")
    } finally {
        println("released")
    }
}

fun main() {
    use(false)
    try { use(true) } catch (e: IllegalStateException) {}
}
