// LEVEL: STD

fun parsePort(s: String): Result<Int> = runCatching { s.toInt() }

fun main() {
    parsePort("x").fold({ println(it) }, { println("error") })
}
