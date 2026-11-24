fun applyUpdate(weights: MutableList<Int>) {
    weights[1] = 5
    weights[3] = 0
}

fun main() {
    val weights = mutableListOf(3, 3, 3, 3)
    val before = weights // CONTROL! val before = weights.toList()
    applyUpdate(weights)
    val changes = weights.indices.count { before[it] != weights[it] }
    println(changes)
}
