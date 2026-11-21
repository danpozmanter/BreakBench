// LEVEL: LANGUAGE

fun main() {
    val i = -1
    val n = 3u
    val wrong = i < n // REJECT!
    println(if (i < n.toInt()) "less" else "not less")
}
