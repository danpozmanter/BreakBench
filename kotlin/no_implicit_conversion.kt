fun main() {
    val big: Long = 42
    val small: Int = big.toInt()
    val wrong: Int = big // BREAK!
    println(small)
}
