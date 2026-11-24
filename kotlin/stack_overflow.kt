fun walk(n: Long): Long {
    if (n == 0L) return 0
    return (walk(n - 1) * 31 + n) % 1_000_000_007L
}

fun main(args: Array<String>) {
    println(walk(args[0].toLong())) // CONTROL! val n = args[0].toLong(); var acc = 0L; for (i in 1L..n) acc = (acc * 31 + i) % 1_000_000_007L; println(acc)
}
