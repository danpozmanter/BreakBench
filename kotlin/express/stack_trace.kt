// LEVEL: STD

fun inner(): Array<StackTraceElement> = Thread.currentThread().stackTrace

fun main() {
    println(if (inner().any { it.methodName == "inner" }) "inner" else "missing")
}
