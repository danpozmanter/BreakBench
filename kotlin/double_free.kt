class Rec(var value: Long)

fun main() {
    var a: Rec? = Rec(0)
    a = null
    a = null
    val x = Rec(1)
    val y = Rec(2)
    println(x.value)
}
