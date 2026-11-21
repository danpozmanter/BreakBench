// LEVEL: LANGUAGE

fun main() {
    val id = 42
    if (id == 42) println("match")
    if (id == "42") println("text") // REJECT!
}
