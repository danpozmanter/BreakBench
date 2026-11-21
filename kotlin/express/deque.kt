// LEVEL: STD

fun main() {
    val d = ArrayDeque<Int>()
    d.addLast(1)
    d.addFirst(0)
    d.addLast(2)
    println("${d.removeFirst()} ${d.removeLast()}")
}
