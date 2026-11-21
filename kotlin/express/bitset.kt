// LEVEL: STD

import java.util.BitSet

fun main() {
    val b = BitSet()
    b.set(1000)
    println("${b.get(1000)} ${b.get(999)}")
}
