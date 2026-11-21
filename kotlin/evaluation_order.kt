fun pair(a: Int, b: Int) = "$a $b"

fun main() {
    var n = 0
    fun next(): Int {
        n += 1
        return n
    }
    println(pair(next(), next()))
}
