fun main(args: Array<String>) {
    val x = args[0].toInt()
    val inside = 1 < x < 3 // BREAK!
    // CONTROL! val inside = 1 < x && x < 3
    println(if (inside) "inside" else "outside")
}
