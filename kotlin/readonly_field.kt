class Config(val port: Int)

fun main() {
    val c = Config(8080)
    c.port = 1 // BREAK!
    println(c.port)
}
