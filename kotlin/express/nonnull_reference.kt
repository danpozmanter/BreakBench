// LEVEL: LANGUAGE

class Config(val name: String)

fun main() {
    val c = Config("app")
    val missing: Config = null // REJECT!
    println(c.name)
}
