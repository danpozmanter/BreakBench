// LEVEL: LANGUAGE

class Rec(val id: Int, val data: ByteArray)

fun main() {
    var last = Rec(0, ByteArray(0))
    for (i in 0 until 4_000_000) {
        last = Rec(i, ByteArray(1016))
    }
    println(last.id)
}
