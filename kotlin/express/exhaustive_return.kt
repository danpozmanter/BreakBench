// LEVEL: LANGUAGE

fun grade(score: Int): String = if (score > 50) "pass" else "fail"

fun bad(score: Int): String { // REJECT!
    if (score > 50) return "pass" // REJECT!
} // REJECT!

fun main() {
    println(grade(60))
}
