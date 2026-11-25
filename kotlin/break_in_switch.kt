fun totalUntilStop(codes: Array<String>): Int {
    var total = 0
    for (c in codes) {
        val code = c.toInt()
        when (code) {
            0 -> break
            else -> total += code
        }
    }
    return total
}

fun main(args: Array<String>) {
    println(totalUntilStop(args))
}
