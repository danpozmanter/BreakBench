// LEVEL: STD

fun main() {
    val cause = Exception("not found")
    val e = Exception("loading config: not found", cause)
    println(e.message)
    println(e.cause?.message)
}
