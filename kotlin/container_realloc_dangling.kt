class Item(var v: Int)

fun main() {
    val v = mutableListOf(Item(1))
    val r = v[0]
    for (i in 0 until 1000) v.add(Item(i))
    val w = mutableListOf(Item(7))
    r.v = 99
    println(w[0].v)
}
