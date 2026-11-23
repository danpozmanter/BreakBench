import kotlinx.serialization.json.Json
import kotlinx.serialization.json.jsonObject

fun main() {
    val event = Json.parseToJsonElement("""{"id": 9007199254740993}""").jsonObject
    println(event["id"])
}
