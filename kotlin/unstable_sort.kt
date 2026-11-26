data class Order(val customer: Int, val day: Int)

fun main() {
    val orders = List(200) { day -> Order(day * 7 % 5, day) }
    val sorted = orders.sortedBy { it.customer }
    val kept = sorted.zipWithNext().all { (a, b) -> a.customer != b.customer || a.day < b.day }
    println(if (kept) "kept" else "scrambled")
}
