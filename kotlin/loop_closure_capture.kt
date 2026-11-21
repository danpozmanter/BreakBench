fun main() {
    val fs = mutableListOf<() -> Int>()
    for (i in 0 until 3) {
        fs.add { i }
    }
    println(fs.joinToString(",") { it().toString() })
}
