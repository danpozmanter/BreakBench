fun walk(n: Long): Long {
    if (n == 0L) return 0
    return (walk(n - 1) * 31 + n) % 1_000_000_007L
}

fun main(args: Array<String>) {
    println(walk(args[0].toLong()))
}
