fun main(args: Array<String>) {
    val stock = mutableMapOf("apple" to 3, "plum" to 4)
    val name = args[0]
    println(stock[name] + 5) // CONTROL! println(stock[name]?.plus(5) ?: "unknown")
}
