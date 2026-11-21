// LEVEL: LANGUAGE

fun main() {
    val o: Int? = null
    val n = o + 1 // REJECT!
    println(if (o == null) "none" else "some")
}
