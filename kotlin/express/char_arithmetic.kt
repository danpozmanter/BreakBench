// LEVEL: LANGUAGE

fun main() {
    val c = 'a'
    val n = c.code + 1
    println(n)
    val m: Int = c + 1 // REJECT!
}
