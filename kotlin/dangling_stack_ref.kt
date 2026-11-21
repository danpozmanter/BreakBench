class IntBox(var value: Int)

fun make(): IntBox {
    val local = IntBox(4242)
    return local
}

fun clobber(): Int {
    val junk = IntArray(64) { 7 }
    return junk[63]
}

fun main() {
    val r = make()
    clobber()
    println(r.value)
}
