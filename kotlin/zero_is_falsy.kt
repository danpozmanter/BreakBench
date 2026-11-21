fun main(args: Array<String>) {
    val qty: Int? = args[0].toIntOrNull()
    var present = false
    if (qty) present = true // BREAK!
    // CONTROL! if (qty != null) present = true
    println(if (present) "have $qty" else "missing")
}
