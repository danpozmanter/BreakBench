import kotlinx.serialization.json.Json

fun main(args: Array<String>) {
    val depth = args[0].toInt()
    // CONTROL! if (depth > 1000) { println("refused"); return }
    Json.parseToJsonElement("[".repeat(depth) + "]".repeat(depth))
    println("parsed")
}
