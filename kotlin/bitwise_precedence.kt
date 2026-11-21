fun main(args: Array<String>) {
    val x = args[0].toInt()
    val even = x and 1 == 0 // BREAK!
    // CONTROL! val even = (x and 1) == 0
    println(if (even) "even" else "odd")
}
