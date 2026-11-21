// LEVEL: STD

fun main() {
    Thread.setDefaultUncaughtExceptionHandler { _, _ -> println("hook ran") }
    throw IllegalStateException("boom")
}
