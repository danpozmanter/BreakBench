fun total(a: Long, b: Long): Long {
    return // CONTROL! return a + b
        a + b // BREAK!
}

fun main() {
    println(total(2, 3))
}
