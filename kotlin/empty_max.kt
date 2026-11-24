fun main(args: Array<String>) {
    val xs = args.map { it.toLong() }
    println(xs.max() + 1) // CONTROL! println(xs.maxOrNull()?.let { (it + 1).toString() } ?: "no readings")
}
