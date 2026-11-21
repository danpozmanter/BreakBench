fun addItem(item: String, cart: MutableList<String> = mutableListOf()): MutableList<String> {
    cart.add(item)
    return cart
}

fun main() {
    addItem("x")
    val b = addItem("y")
    println(b.size)
}
