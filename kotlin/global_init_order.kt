val limit = base() * 2 // BREAK!
val baseValue = "10".toLong()
// CONTROL! val limit = base() * 2

fun base(): Long = baseValue

fun main() {
    println(limit)
}
