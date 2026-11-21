class Rec(var value: Long)

fun main() {
    var a: Rec? = Rec(1234)
    val b = a!!
    a = null
    val c = Rec(6666)
    println(b.value)
}
