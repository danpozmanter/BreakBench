data class Config(val timeout: Int, val retries: Int)

fun main() {
    val c = Config(timeout = 5, retries = 3)
    val partial = Config(timeout = 5) // BREAK!
    println("${c.timeout} ${c.retries}")
}
