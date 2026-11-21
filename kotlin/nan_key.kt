fun main() {
    val a = "NaN".toDouble()
    val b = "NaN".toDouble()
    val s = hashSetOf(a)
    println(if (b in s) "found" else "missing")
}
