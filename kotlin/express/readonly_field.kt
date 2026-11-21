// LEVEL: LANGUAGE

class Config(val port: Int)

fun main() {
    val c = Config(8080)
    c.port = 1 // REJECT!
    println(c.port)
}
