// LEVEL: STD

fun main() {
    println(ProcessBuilder("false").start().waitFor())
}
