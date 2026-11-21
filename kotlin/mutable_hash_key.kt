fun main() {
    val seen = hashSetOf<List<Int>>()
    var key = listOf(1, 2)
    seen.add(key)
    key = key.toMutableList().also { it[0] = 9 }
    for (e in seen) {
        println(if (e in seen) "found" else "lost")
    }
}
