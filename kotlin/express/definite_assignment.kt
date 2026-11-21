// LEVEL: LANGUAGE

fun main(args: Array<String>) {
    val ready = args.size < 5
    val x: Int
    if (ready) x = 5 else x = 5
    val y: Int // REJECT!
    if (ready) y = 1 // REJECT!
    println(y) // REJECT!
    println(x)
}
