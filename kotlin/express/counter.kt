// LEVEL: STD

fun main() {
    val counts = listOf("a", "b", "a").groupingBy { it }.eachCount()
    println("a=${counts["a"]} b=${counts["b"]}")
}
