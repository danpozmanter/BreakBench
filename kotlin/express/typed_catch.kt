// LEVEL: LANGUAGE

class KindA : RuntimeException()
class KindB : RuntimeException()

fun step(a: Boolean) {
    try {
        throw if (a) KindA() else KindB()
    } catch (e: KindA) {
        println("caught A")
    }
}

fun main() {
    step(true)
    try { step(false) } catch (e: KindB) { println("passed B") }
}
