// LEVEL: LANGUAGE

fun walk(n: Int): Int = walk(n + 1) + 1

fun main() {
    try { walk(0) } catch (e: StackOverflowError) { println("stack overflow") }
}
